# Elite Kickboxing için Erişim Kontrolü ve Dolap Kilitleme Stratejisi

## TL;DR
- **Elite için doğru çözüm "telefon-öncelikli ama kart-yedekli" hibrit bir mimaridir**: ana kimlik taşıyıcı MIFARE DESFire EV3 kart/bileklik kalmalı, mobil (NFC/BLE wallet) ikinci kanal olarak eklenmeli; biyometrik DSGVO riski nedeniyle ana giriş için önerilmez. Dövüş sporu bağlamında (telefonu sahaya/ringe götürmeme, terli el, antrenman boyunca telefon dolapta) fiziksel taşıyıcı vazgeçilmezdir.
- **En kritik karar donanım değil mimaridir**: erişim/dolap sistemi Soluty platformuna açık standartlar (OSDP, REST API, webhook) üzerinden bağlanmalı; edge controller + cloud sync modeli internet kesintisinde çalışmaya devam etmeli; üyelik durumu (aktif/dondurulmuş/borçlu) erişim noktasında otomatik kontrol edilmeli.
- **Dolaplar için bağımsız (standalone), pille çalışan, BLE/funk ile merkezi yazılıma rapor veren kilitler** Elite ölçeğinde doğru tercih; serbest atama (free-assignment) modeli 250 üyeli tek lokasyon için en pratiği.

## Key Findings

1. **RFID hâlâ omurga, ama tek katman değil.** Sektörün fiili standardı 13,56 MHz HF RFID (MIFARE ailesi) olmaya devam ediyor. Endüstri tavsiyesi minimum MIFARE DESFire EV1; bugün yeni kurulum için DESFire EV2/EV3 doğru seçim (AES-128 şifreleme, EV2/EV3 için EAL5+ sertifikasyon, kopyalamaya karşı Random UID). MIFARE Classic 2008'de Radboud Üniversitesi Nijmegen Dijital Güvenlik Grubu tarafından ("Dismantling MIFARE Classic", ESORICS 2008, Malaga) kırıldı — temel şifre Crypto-1, gerçek okuyucuyla RF iletişimi dinlenebilirse "0,1 saniye kadar kısa sürede" çözülebiliyor; ~30 EUR'luk cihazlarla klonlanabiliyor — kesinlikle kullanılmamalı.

2. **Telefon kartı tamamen ikame edemiyor; gerçekçi olan hibrit.** Sektör kaynakları net: çoğu salon mobil erişimi fiziksel kimlik taşıyıcının yanında çalıştırıyor, tek yöntem olarak değil. Mobilin başarısızlık modları (pil bitmesi, BLE tutarsızlığı, izin sorunları, telefon değişimi, uygulamayı kişisel telefona istemeyen üyeler) yedek gerektiriyor.

3. **Biyometrik DACH'ta hukuki mayın tarlası.** Parmak izi/yüz tanıma DSGVO Art. 9 kapsamında "özel kategori" veri; işlenmesi prensipte yasak, sadece dar istisnalarla (özellikle açıkça verilen rıza) mümkün ve Datenschutz-Folgenabschätzung (DSFA/DPIA) zorunlu. Ayrıca dövüş/fitness ortamında parmak izi okuyucular terli/nasırlı/tebeşirli elde güvenilmez.

4. **Dolaplar için standalone + funk raporlama doğru denge.** Pille çalışan, kablosuz (BLE/funk) ile merkezi yazılıma durum (kilitli/açık, düşük pil, kırılma alarmı) bildiren kilitler; serbest atama modeli; mekanik master-key yedeği.

5. **Açık standartlar vendor lock-in'i kırıyor.** OSDP (AES-128, çift yönlü, RS-485) Wiegand'ın yerini alan açık standart; REST API + webhook backend entegrasyonunun temeli; yeni Aliro 1.0 standardı (CSA, 26 Şubat 2026'da yayınlandı, 220+ üye şirket katkı verdi — Apple, ASSA ABLOY, Google, Samsung, NXP) telefon kimlik bilgilerini tedarikçi-bağımsız hale getiriyor.

## Details

### 1. Erişim Yöntemleri Karşılaştırmalı Analizi

#### A. RFID kart / bileklik / fob (MIFARE DESFire EV2/EV3)
- **Güvenlik:** Yüksek. AES-128 donanım şifreleme, EV2/EV3 EAL5+ sertifikasyon. Random UID ile klonlama engellenir. Önemli not: 2008'de kırılan eski DESFire MF3ICD40 idi; DESFire EV1 ve sonrası hâlâ kırılmadı.
- **Kullanım kolaylığı:** Çok yüksek — terli el, eldiven, ıslak ortamda sorunsuz çalışır (temassız, ~1-10 cm menzil). Dövüş sporu için en dayanıklı form **silikon bileklik** (su geçirmez, -30°C/+75°C, antrenman sırasında bilekte kalır).
- **Maliyet:** Düşük-orta. Blank DESFire EV3 kart ~2,30–3,20 EUR/adet (toplu→tekil, net; i-keys.de), keyfob ~3–5 EUR, ön-kodlanmış kopya-korumalı kart ~7 EUR.
- **Dolandırıcılık riski:** Kart paylaşımı mümkün (fiziksel olarak ödünç verilebilir) — bu RFID'nin temel zaafı. Anti-passback + turnike ile azaltılır.
- **Yedek erişim:** Kolay — kayıp kart anında iptal, yenisi reception'da basılır.

#### B. Mobil app tabanlı (NFC / BLE / QR)
- **Güvenlik:** Yüksek (cihaz bağlama, biyometrik telefon kilidi). Wallet kimlik bilgileri kullanıcıyı cihazın yerleşik güvenliğiyle doğrular.
- **Kullanım kolaylığı:** İyi ama dövüş bağlamında SINIRLI. Telefonu sahaya/ringe götürmezsin; terli elle telefon tutmak zor; antrenman sırasında telefon dolapta. QR her birkaç saniyede yenilenerek dolandırıcılık önlenir ama ışık/kamera kalibrasyonuna duyarlı.
- **Maliyet:** Plastik kart maliyeti yok; ama reader yükseltmesi (NFC/BLE) ve app geliştirme/bakım maliyeti var.
- **Başarısızlık modları:** Pil bitmesi, BLE tutarsızlığı, arka plan izin hatası, telefon değişimi, uygulamayı kişisel telefona istemeyen üyeler.
- **Sonuç:** İkincil/tamamlayıcı kanal olarak mükemmel; tek kanal olarak Elite için riskli.

#### C. Biyometrik (parmak izi / yüz tanıma)
- **Güvenlik:** En yüksek (devredilemez, paylaşılamaz).
- **DSGVO:** Art. 9 özel kategori — prensipte yasak; rıza tabanlı ve DSFA zorunlu; eşdeğer non-biyometrik alternatif sunulmalı (gönüllülük şartı).
- **Pratik sorun:** Parmak izi terli/ıslak/nasırlı/tebeşirli elde güvenilmez. Yüz tanıma kameraya/EU AI Act'e tabi.
- **Sektör trendi:** Bazı salonlar maliyet+gizlilik tepkisi nedeniyle biyometrikten vazgeçti; palm-vein gibi alternatifler ortaya çıktı ama DACH'ta yaygın değil.
- **Sonuç:** Elite ana girişi için ÖNERİLMEZ.

#### D. Hibrit (kart + telefon + opsiyonel PIN)
- En gerçekçi ve dayanıklı. Çoklu kimlik taşıyıcı, ELATEC TWN4 MultiTech gibi multi-tech reader ile tek okuyucuda RFID + NFC + BLE (60+ transponder teknolojisi desteği).

### 2. Dolap Kilitleme Sistemleri

| Boyut | Standalone (bağımsız, pille) | Networked (merkezi, kablolu) |
|---|---|---|
| Kurulum | Kolay, kablosuz, mevcut dolaplara retrofit | Kablolama gerekli, pahalı |
| Maliyet | Düşük (~100+ EUR/kilit) | Yüksek |
| Merkezi görünürlük | Funk/BLE ile durum raporu (Gantner eLoxx) | Tam gerçek zamanlı |
| Elite ölçeği | UYGUN | Aşırı |

- **Atama modeli:** Serbest atama (free mode) — üye her gün boş dolap seçer, kendi kimliğiyle kilitler/açar. 250 üyeli tek lokasyon için en pratik. Sabit atama (fixed) küçük/butik için.
- **Pil:** Gantner ECO.Side Lock'ta "10 yıla kadar" pil ömrü iddia ediliyor (üretici beyanı). Düşük pil uyarısı funk ile merkezi yazılıma gider.
- **Yedek erişim:** Pil bitince/arızada mekanik master-key (cinsiyete göre ayrı), USB acil güç, veya yönetici kartı.
- **DACH ürünleri:** Gantner (GL7p, ECO.Lock, NET.Lock — Münih ELEMENTS studio referansı), Ojmar, Burg (Flexo.RFID), Metra. Aynı üye kimliğiyle (kart/bileklik) hem giriş hem dolap çalışır.

### 3. Sistem Mimarisi — Entegrasyon (en kritik bölüm)

#### Backend entegrasyonu
- Erişim olayları (giriş/çıkış zamanı, dolap kullanımı) reader → edge controller → cloud sync → Soluty üyelik veritabanı akışıyla gerçek zamanlı işlenmeli.
- Üyelik durumu kontrolü: reader bir kimlik okuduğunda edge controller yerel yetki listesini kontrol eder; üyelik aktif değilse (dondurulmuş/borçlu/iptal) kapı açılmaz. GymAccess/Magicline modelinde "iptal edilen üyelik manuel müdahale olmadan otomatik engellenir."
- DACH referans modeli: Magicline Open API + MagicAccess gibi potansiyalsiz kontak (potentialfreier Kontakt) modülleri kartı okuyup Magicline'a sorar, açılış sinyalini geri alır. Magicline'ın kendi verisine göre Open API üzerinden "100'den fazla benzersiz partner ile 10.000'den fazla müşteri entegrasyonu" gerçekleşti ve müşterilerin %84'ü entegrasyonu kalıcı tuttu.

#### Cloud vs on-premise/edge (offline capability)
- Edge controller modeli kritik: yetki mantığı ve hassas veri controller'da yerel tutulur; **internet/sunucu çökse bile sistem çalışmaya devam eder**, kimlik doğrulama yerelde daha hızlıdır, bağlantı dönünce senkron olur.
- Mercury Security gibi açık controller mimarileri TLS 1.3, OSDP Secure Channel, secure boot ile edge'de uygulama çalıştırır.
- Pratik kural: kapı erişimi ASLA buluta canlı bağımlı olmamalı; bulut analitik/yönetim/çoklu-lokasyon koordinasyonu için.

#### Açık standartlar vs vendor lock-in
- **OSDP** (Open Supervised Device Protocol, SIA): açık, AES-128 Secure Channel, çift yönlü (tamper/health monitoring), RS-485 multi-drop. IEC 60839 tarafından tavsiye ediliyor. Wiegand artık güvenlik açığı (şifresiz, tek yönlü, ~30 EUR cihazla klonlanır) — sadece geçiş döneminde dual-protocol reader ile köprülenmeli.
- **REST API + webhook:** backend entegrasyonunun temeli; Soluty bunları zorunlu kılmalı.
- **Aliro 1.0** (CSA, 26 Şubat 2026): telefon-kapı kimlik bilgisi açık standardı; Apple/Google/Samsung wallet desteği; NFC/BLE/UWB; PKI tabanlı, offline-native credential paylaşımı/iptali; tedarikçi-bağımsız donanım karışımı. CSA CEO Tobin Richardson: "Aliro is solving the fragmentation that has held back digital key adoption, replacing it with a single interoperability standard built through Alliance Member collaboration." Soluty'nin "donanım-bağımsız" felsefesiyle birebir uyumlu, izlenmesi gereken stratejik standart.
- **Kaçınılacak:** Tamamen kapalı/proprietary protokoller (örn. SALTO kendi protokolünde çalışır — güçlü ürün ama lock-in riski).

#### Donanım soyutlama / mevcut kartlar
- Elite'in mevcut kartları muhtemelen MIFARE ailesi (Classic veya DESFire). DESFire ise yeni multi-tech reader'larla (ELATEC TWN4) çalışır — kademeli geçiş mümkün. Classic ise güvenlik nedeniyle değiştirilmeli.
- Soluty bir "donanım soyutlama katmanı" (HAL) tasarlamalı: kart/okuyucu/kilit modelleri pluggable olmalı, UID/credential ID standart bir iç şemaya map edilmeli.

### 4. DACH / Almanya — Yasal ve Pratik

- **DSGVO giriş/çıkış logları:** kişisel veri. Saklama süresi "amaç için gerekli olduğu kadar" (Art. 5 storage limitation). Operasyonel güvenlik logları için yaygın baseline 30-90 gün; gerekçelendirilirse 6-12 ay. Pseudonymization + otomatik silme + şeffaf bilgilendirme (Art. 13) şart.
- **Biyometri:** Art. 9, DSFA zorunlu, gönüllü rıza + eşdeğer alternatif. Emsal karar: ArbG Berlin 16.10.2019 (Az. 29 Ca 5451/19) ve onu onaylayan LAG Berlin-Brandenburg 04.06.2020 (Az. 10 Sa 2130/19) — biyometrik zaman kaydını "çip kartla yapılabilecekken Art. 9 Abs. 2 lit. b DSGVO ve § 26 Abs. 3 BDSG anlamında genelde gerekli olmadığı" gerekçesiyle reddetti. (Not: bu kamuoyunda sık sık "BAG 2023" olarak yanlış anılıyor; asıl bağlayıcı emsal yukarıdaki ArbG/LAG kararlarıdır.) Elite için biyometri = gereksiz hukuki risk.
- **Üye rızası:** Erişim logları için Art. 6 (sözleşme ifası/meşru menfaat) yeterli olabilir; biyometri için Art. 9 açık rıza şart. Şeffaf gizlilik bildirimi, saklama takvimi, silme/erişim hakları.
- **DACH yaygın sistemler:** Magicline (Hamburg merkezli Sport Alliance GmbH iştiraki; DACH pazar lideri, 6.000+ fitness işletmesi — en büyük müşterileri McFIT, bodystreet, EASYFITNESS, clever fit; Open API), eGym, Eversports, myFitApp; donanımda Gantner, Wanzl (turnike), Dormakaba; entegrasyon aracıları GymAccess, MagicAccess.

### 5. Ölçeklenebilirlik ve Gelecek

- **Çoklu lokasyon, tek kimlik:** Bulut tabanlı multi-tenant kimlik servisi (SALTO KS, Kisi, Brivo modeli) — üye tek credential ile tüm şubelere girer; yetkiler merkezi yönetilir, her lokasyonda edge controller offline çalışır. Soluty platformu credential'ı lokasyondan bağımsız, üyelik kapsamını lokasyon-bazlı tutmalı.
- **Veri değeri:** Erişim verisi yoklama, üye analitiği, AI asistanlarını besler. "Giriş yaptı ama derse katılmadı", "4+ hafta gelmedi ama sözleşme 2+ ay sürüyor → churn riski" gibi sinyaller operasyonel değer üretir (Magicline kural-motoru örneği). Dolap kullanımı + giriş/çıkış süresi = gerçek tesis kullanım yoğunluğu.
- **5-10 yıllık yön:** Mobil/wallet kimlik bilgileri büyüyor (Apple/Google/Samsung wallet, Aliro standardı); plastik kart azalıyor ama tamamen kaybolmuyor (özellikle spor bağlamında). En uzun ömürlü yatırım: **açık standart reader (multi-tech: RFID+NFC+BLE) + OSDP + açık API'li edge controller**. Bu, hem bugünkü DESFire kartı hem yarınki Aliro telefonu okur — donanım-bağımsızlığı korur.

## Recommendations

Elite'in farklı önceliklerine göre 3 senaryo:

### Senaryo A — Maliyet-Öncelikli ("Yeterince iyi")
- Mevcut DESFire kartları/okuyucuları koru (Classic ise DESFire EV3'e geç).
- Standalone pille çalışan RFID dolap kilitleri (Gantner ECO.Lock sınıfı), serbest atama, mekanik master-key yedek.
- Tek giriş kapısı + basit RFID reader; turnike yok veya tek tripod (~1.500-3.500 EUR donanım).
- Soluty REST API ile Magicline-tarzı backend entegrasyonu.
- **Mertebe:** kart ~2,5-5 EUR; reader ~130-200 EUR; dolap kilidi ~100+ EUR; tripod turnike kurulu ~3.000-5.000 EUR.

### Senaryo B — Güvenlik-Öncelikli
- DESFire EV3 + Random UID + OSDP Secure Channel reader'lar; anti-passback.
- Tam boy turnike/speed gate (tailgating önleme) — kurulu ~8.000-15.000 EUR.
- Edge controller + cloud sync (offline capability), TLS 1.3.
- Biyometri YOK (DSGVO riski); bunun yerine kart + opsiyonel PIN ikinci faktör.

### Senaryo C — Üye-Deneyimi-Öncelikli (ÖNERİLEN denge)
- **Hibrit:** DESFire EV3 silikon bileklik (varsayılan, dövüş için ideal) + mobil NFC/BLE wallet (ikincil) + multi-tech reader (ELATEC TWN4 sınıfı).
- Standalone dolap kilitleri funk raporlamayla (Gantner eLoxx/GL7p sınıfı), hem kart hem telefonla açılır.
- Edge controller + bulut, Soluty platformuna OSDP/REST/webhook ile bağlı.
- Aliro-hazır reader seç (gelecek için).
- Speed gate opsiyonel.

**Karar eşikleri:**
- Üye sayısı 2. lokasyona doğru büyüyorsa → multi-tenant bulut kimlik servisi şart, Senaryo C'ye geç.
- Kart paylaşımı/gelir kaçağı sorunu ölçülürse → anti-passback + turnike (Senaryo B unsurları).
- 24/7 personelsiz modele geçilirse → tam boy turnike + tailgating tespiti zorunlu.
- Üyeler mobil benimserse (>%50 wallet kullanımı) → kart üretimini azalt ama yedek olarak tut.

## Caveats
- **Maliyet rakamları mertebe göstergesidir, teklif değil.** DACH'ta dolap kilidi ve turnike tedarikçilerinin çoğu fiyatı sadece teklifle veriyor — bu da bir bulgu. i-keys.de net fiyatlar (KDV hariç); SALTO KS KDV dahil — doğrudan kıyas için ~%19 ayarı gerekir.
- **Gantner ">100 EUR/Fach" rakamı** tek bir B2B tasfiye açık artırma ilanından (Neupreis tahmini), liste fiyatı değil.
- **Kisi per-door $30-80 rakamları** üçüncü-taraf agregatörlerden (Vendr); Kisi per-door fiyat yayınlamıyor ve fiyatlandırması istikrarsız (bir kullanıcı 4 kat artıştan şikayet etti).
- **Pil ömrü iddiaları** (10 yıl) üretici beyanıdır; gerçek kullanım yoğunluğuna göre değişir.
- **Aliro 1.0** 26 Şubat 2026'da yayınlandı ama sertifikalı kilit/reader ekosistemi henüz olgunlaşıyor (CES 2026 ilk ürünler — Aqara, SwitchBot, Nuki); bugün üretime almak yerine "izle ve hazırlan".
- Elite'in mevcut kart tipi (Classic vs DESFire) doğrulanmalı — bu, retrofit mi yoksa tam değişim mi gerektiğini belirler.