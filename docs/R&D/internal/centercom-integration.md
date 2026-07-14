# CenterCom Entegrasyon — Bağımlılıklar, Sorular, Senaryolar

**Durum:** İÇ DOKÜMAN — müşteriye gitmez
**Tarih:** 14 Temmuz 2026 (v2)
**İlgili:** `docs/R&D/elite-strategic-roadmap-V2.md` §5.6

---

## 0. Temel Varsayım

> **CenterCom büyük olasılıkla sürekli entegrasyona izin vermeyecektir.**
> Verirlerse sürpriz olur. Mimariyi bu varsayım üzerine kur.
> **İşbirliği = bonus. Dayanak değil.**

**Ama iki farklı kapı var — karıştırma:**

| Kapı | Ne | CenterCom'un direnci |
|---|---|---|
| **Sürekli entegrasyon** (API, canlı senkronizasyon) | CenterCom'un **ürün kararı** | Yüksek. Bizi rakip görebilir. |
| **Başlangıç veri aktarımı** (tek seferlik export) | **Elite'in kendi verisi** | Düşük. "Müşterimin verisini vermem" savunulamaz. |

Entegrasyona hayır diyen, veri aktarımına evet diyebilir. **Ayrı talep, ayrı görüşme.**

---

## 1. Kritik İçgörü — CenterCom'un İznine İhtiyacımız Yok

| Ne lazım | Kimden | CenterCom işbirliği? |
|---|---|---|
| **Yazma yolu** — yeni üye verisinin CenterCom'a girmesi | Elite personeli elle girer | ❌ Hayır |
| **Okuma yolu** — üye/aidat durumunun bize gelmesi | Elite kendi verisini dışa aktarır | ❌ Hayır* |
| **Canlı senkronizasyon** | CenterCom API'si | ✅ Evet |

\* CenterCom'un DATEV/Lexware arayüzü var → **export yeteneği mevcut.** Üye listesi export'u da büyük olasılıkla var.

**Faz 1'in tamamı sıfır CenterCom işbirliğiyle teslim edilebilir.** Canlı API deneyimi iyileştirir, mümkün kılmaz.

---

## 2. Veri Sahipliği Modeli

### 2.1 Temel ilke — doğuş yeri ≠ yürütme yeri

Üyelik ve sözleşme süreci **bizim tarafımızda yürüdüğü için**, üye verisinin ana kaynağı **Soluty'dir.**

| Veri | Doğar | **Master (yazma yetkisi)** |
|---|---|---|
| Kişi: ad, adres, e-posta, telefon, doğum tarihi | Soluty | **Soluty** |
| Veli–çocuk ilişkisi | Soluty | **Soluty** |
| Sözleşme: tip, süre, fiyat, imza, belge | Soluty | **Soluty** |
| IBAN + SEPA mandate | Soluty (toplar, arşivler) | **Soluty** (kaynak) |
| Kuşak, sınav, teknik, gelişim | Soluty | **Soluty** |
| Ders programı, rezervasyon, QR katılım | Soluty | **Soluty** |
| App profili, rozet, bildirim, seminer | Soluty | **Soluty** |
| Lead / deneme dersi | Soluty | **Soluty** |
| ⚠️ **Üyelik yürütme durumu** (aktif / borçlu / dondurulmuş / iptal) | **CenterCom** | **CenterCom** |
| ⚠️ **Aidat, borç, Mahnwesen, ödeme geçmişi** | CenterCom | **CenterCom** |

### 2.2 Tek istisna — neden yürütme durumu bizde olamaz

Durumu **değiştiren olaylar CenterCom'da gerçekleşiyor:**
- Mahnwesen üyeyi askıya alır → CenterCom
- §312k iptal butonu üyeliği sonlandırır → CenterCom
- Tahsilat başarısızlığı borç yaratır → CenterCom

**Biz bu olayları üretemeyiz. Sadece okuruz.** Okuyamazsak, personel bizim panelde elle işaretler.

### 2.3 ⚠️ Master olmak ilan edilmez, uygulanır

**Sorun:** Elite personelinin CenterCom'u gün boyu açık. Birisi bir adresi orada değiştirecek — alışkanlıktan. O an bizim "master" kaydımız **sessizce yanlış** olur.

**İki şey gerekli:**

1. **Kural (D2):** Kişi ve sözleşme verisi CenterCom'da düzenlenmez. Soluty panelinden düzenlenir, oradan akar.
2. **Mutabakat mekanizması:** Periyodik olarak CenterCom üye listesi çekilir, bizimkiyle karşılaştırılır. Fark varsa panelde uyarı: *"Bu üyelerin verisi CenterCom'da farklı — hangisi doğru?"*

**Sessiz drift'i görünür çatışmaya çevirmek.** İkincisi olmadan birincisi temenni.

---

## 3. Başlangıç Veri Aktarımı (Migration)

> **Ayrı başlık, ayrı görüşme, ayrı direnç seviyesi.** Bkz. §0.

### 3.1 CenterCom'dan aktarılacaklar

| Veri | Öncelik | Not |
|---|---|---|
| ~900 üye: ad, adres, iletişim, doğum tarihi | **MUST** | Temel |
| Üyelik tipi, başlangıç tarihi, durum | **MUST** | |
| Veli–çocuk ilişkileri (varsa) | **MUST** | CenterCom'da aile hesabı var mı? (Q11) |
| Sözleşme PDF'leri (taranmış, bugün orada) | **SHOULD** | Arşiv devamlılığı |
| IBAN / mandate verisi | **SHOULD** | ⚠️ DSGVO hassas — gerekli mi, yoksa CenterCom'da mı kalsın? |
| **Turnike giriş geçmişi** | **SHOULD** ⬆️ | Bkz. §3.3 — kuşak baseline'ı için tek gerçekçi kaynak |
| POS satın alma geçmişi | NICE | Faz 2 için |

### 3.2 ⚠️ Gizli iş kalemi — kuşak verisi hiçbir yerde yok

**CenterCom'da kuşak verisi YOK.** Antrenörlerin hafızasında ve kâğıtta.

Yani bu bir *aktarım* değil, bir **veri üretimi projesi:**
- 900 üye × mevcut kuşak seviyesi
- Antrenörler girecek
- **Faz 1'in en büyük gizli iş kalemi**

Bu bir onboarding workstream'idir ve teklifte hesaba katılmalıdır.

### 3.3 Baseline problemi — ve N1'in yeniden değerlendirilmesi

Kuşak sistemi *"sonraki sınav için X antrenman"* mantığıyla çalışıyor.

**Problem:** Lansmanda sıfırdan saymaya başlarsak, sınava 2 ay kalmış üye **"yeni başlamış"** görünür. İlk çevrim bozuk olur.

**Çözüm seçenekleri:**
- (a) Antrenör yaklaşık "son terfiden beri antrenman sayısı" girer → hataya açık
- (b) **CenterCom turnike giriş geçmişi çekilir** → tek gerçekçi baseline kaynağı
- (c) Kabul edilir ki ilk çevrim yaklaşıktır

**Sonuç:** Turnike verisi (N1) **sürekli akış olarak nice-to-have, ama başlangıç aktarımında değerli.**

### 3.4 Migration soruları (CenterCom'a)

| # | Soru |
|---|---|
| Q16 | Üye verisi export edilebiliyor mu? Hangi format? (CSV/Excel/XML) |
| Q17 | Export'u **Elite kendi ekranından** yapabiliyor mu, yoksa CenterCom mu çalıştırmalı? |
| Q18 | Export ücretli mi? |
| Q19 | Taranmış sözleşme PDF'leri toplu indirilebiliyor mu? |
| Q20 | **Turnike/check-in geçmişi** export edilebiliyor mu? Ne kadar geriye? |
| Q21 | Veli–çocuk ilişkisi export'ta yer alıyor mu? |

### 3.5 ⚠️ DSGVO — AVV zorunlu

Üye kişisel verisi CenterCom'dan Soluty'ye aktarılacak.
- **Elite = Verantwortlicher (controller)**
- **Soluty = Auftragsverarbeiter (processor)**
- → **AVV (Auftragsverarbeitungsvertrag / DPA) zorunlu.** Sözleşme ekinde olmalı.

*(Hukukçuya doğrulatılacak — L6.)*

---

## 4. Sürekli Veri Akışı

### 4.1 MUST — akmak zorunda

| # | Akış | Yön | Neden | Elle olur mu? |
|---|---|---|---|---|
| M1 | **Kimlik eşleşmesi** (CenterCom üye no ↔ app hesabı) | ← Oku | Bu olmadan hiçbir şey çalışmaz | ✅ Migration'da kurulur, sonra akış |
| M2 | **Yeni üye + sözleşme + mandate verisi** | → Yaz | Girmezse fatura kesilmez. **Para kaybı.** | ✅ Personel girer (bugün de öyle) |
| M3 | **Üyelik durumu** (aktif/iptal/dondurulmuş) | ← Oku | İptal olan üye app'i kullanmaya devam eder → **hayalet üye** | ✅ Periyodik export veya elle işaretleme |
| M4 | **İletişim/adres değişikliği** | → Yaz | Fatura yanlış adrese gider | ✅ Personel görevi |
| M5 | **IBAN değişikliği → yeni mandate** | → Yaz | Tahsilat durur; yeni mandate gerekir | ✅ Sözleşme akışı olayı |

**Hepsi elle yapılabilir. Hiçbiri CenterCom işbirliği gerektirmez.**

> **Kritik ayrım:** Veri akışının **MUST** olması, **otomasyonun** MUST olduğu anlamına gelmez.
> Akış zorunlu — otomasyon konfor.

### 4.2 SHOULD — olmadan çalışır, ama görünür boşluk

| # | Akış | Yön | Değer | Risk |
|---|---|---|---|---|
| S1 | **Ödeme/aidat durumu + fatura** | ← Oku | Üye "aidatım geçti mi" sorusunu app'te sorar | Yoksa "tek platform" hikâyesinde delik |
| S2 | **Üyelik tipi / fiyat kataloğu** | ← Oku | Web sitemiz doğru fiyatı göstermeli | ⚠️ Drift = **hukuki risk** (yanlış fiyat reklamı) |

**S2 hafife alınmasın.** Fiyat nadiren değişir → elle tutulabilir. Ama **süreç kontrolü şart.**

### 4.3 NICE — iyileştirir

| # | Akış | Yön | Ne kazandırır |
|---|---|---|---|
| N1 | Turnike giriş verisi | ← Oku | "3 haftadır gelmedi" sinyali → geri kazanım. QR unutanlar için yedek. **+ Migration baseline (§3.3)** |
| N2 | Borç / Mahnwesen durumu | ← Oku | Borçlu üyeye özel iletişim |
| N3 | RFID kart ↔ app eşleşmesi | ← Oku | Sadece N1 alınırsa gerekli |
| N4 | POS satın alma geçmişi | ← Oku | Faz 2'de birleşik "satın aldıklarım" görünümü |

### 4.4 SIFIR ALIŞVERİŞ — temiz sınır

CenterCom'a **hiç dokunmayan** yetenekler:

Ders programı ve rezervasyon · QR antrenman check-in · Kuşak / sınav / teknik / gelişim · Rozet ve motivasyon · Seminer / etkinlik / bilet · Rezerve edilebilir hizmetler · Push / haber / bildirim · Antrenör profilleri · Web sitesi içeriği · **Deneme dersi ve lead** (dönüşene kadar tamamen bizim) · **Dijital sözleşme toplama + imza + arşiv**

> **İptal (§312k) bilinçli olarak CenterCom'da bırakılıyor.** Üye onların butonuna yönlendirilir; biz sadece durum değişikliğini okuruz.
> Kazanç: write bağımlılığından kurtuluruz **+** §312k hukuki riskini üstlenmeyiz.
> Bu bir kayıp değil, **kasıtlı bir sınır.**

---

## 5. SEPA Mandate — Hukuki Durum

### 5.1 Doğrulanmış

- **Mandate, borçlu (üye) ile alacaklı (Elite) arasındadır.** CenterCom taraf değildir.
- **Arşivleme yükümlülüğü alacaklıdadır** — Elite'te. Biz Elite adına arşivleyebiliriz.
- CenterCom'un ihtiyacı mandate belgesi değil, **veri alanlarıdır:** IBAN, BIC, Mandatsreferenz, imza tarihi, sıra tipi.
- SEPA Basislastschrift: **8 hafta koşulsuz iade**, yetkisiz tahsilatta **13 ay** itiraz hakkı.
- Mandate son tahsilattan **36 ay** sonra kendiliğinden geçersiz olur.
- Zorunlu alanlar: alacaklı adı + Gläubiger-ID + Mandatsreferenz, borçlu adı + adres + IBAN/BIC, tarih, borçlunun dilinde yetkilendirme metni, 8 hafta bilgilendirmesi.

### 5.2 Çelişkili — ⚠️ HUKUKÇUYA

İmza formu konusunda kaynaklar çelişiyor: bazıları elektronik mandate'in imzasız geçerli olduğunu, bazıları QES gerektiğini söylüyor.

**Ortak nokta: form serbest olsa da, ihtilafta ispat yükü alacaklıdadır.**

**Tasarım sonucu:** Hedef "hangi imza teknolojisi" değil, **kanıt kalitesi** — zaman damgası, IP, cihaz, imzalama anında gösterilen metnin kaydı, değiştirilemez arşiv.

**Müşteri belgesine hiçbir hukuki iddia yazılmayacak — önce hukukçu onayı.**

### 5.3 ⚠️ EN KRİTİK TEKNİK TUZAK — Mandatsreferenz

Mandate belgesindeki **Mandatsreferenz**, CenterCom'un bankaya gönderdiği dosyadaki referansla **birebir aynı olmalı.**

Üyenin banka ekstresindeki referans, imzaladığı belgedekiyle eşleşmezse → itirazda savunmasız kalırız.

**İki yol:** (a) CenterCom'un referans formatını kullanırız, (b) CenterCom bizimkini kabul eder.

**CenterCom'a sorulacak en kritik teknik soru. Diğerleri konfor; bu hukuki.**

---

## 6. CenterCom'a Sorulacaklar

### 6.1 Veri erişimi

| # | Soru |
|---|---|
| Q1 | Public/partner API var mı? Dokümantasyon? |
| Q2 | API yoksa, üçüncü taraf entegrasyon politikası nedir? (EGYM/THEDEX ile entegreler — hangi koşulla?) |
| Q3 | Üye verisi **toplu import** yeteneği var mı? |
| Q4 | Üye/aidat/durum verisi **export** edilebiliyor mu? Format? Zamanlanabilir mi? |
| Q5 | Export/import Elite'in kendi ekranından yapılabiliyor mu? |

### 6.2 SEPA / Mandate

| # | Soru |
|---|---|
| Q6 | **Mandatsreferenz'i kim üretir?** Dışarıdan verilebiliyor mu? *(en kritik)* |
| Q7 | Mandate verisi dışarıdan içeri alınabiliyor mu? |
| Q8 | CenterCom mandate belgesini (PDF) saklıyor mu, yoksa sadece veriyi mi? |
| Q9 | Elite'in Gläubiger-ID'si nedir? |
| Q10 | CenterCom'un kendi dijital sözleşme akışı mandate'i nasıl topluyor? Hangi imza formu? |

### 6.3 Migration

Bkz. §3.4 — Q16–Q21

### 6.4 Diğer

| # | Soru |
|---|---|
| Q11 | Aile hesabı / veli-çocuk yapısı var mı? |
| Q12 | Ruhezeit (dondurma) akışı var mı? |
| Q13 | Push bildirim yeteneği var mı? *(çakışma riski)* |
| Q14 | Sözleşme AGB versiyonlama yapıyor mu? |
| Q15 | DATEV/Lexware aktarımı Elite'te **aktif mi?** *(güven hamlesi)* |

---

## 7. Tuzaklar

| # | Tuzak | Sonuç | Önlem |
|---|---|---|---|
| **T1** | **Çift rezervasyon sistemi** | CenterCom'un Kursverwaltung'u açık kalırsa iki yerde rezervasyon = kaos | **CenterCom ders modülü üye-yüzü için emekli edilmeli (D1)** |
| **T2** | Mandatsreferenz uyuşmazlığı | İtirazda savunmasızlık | §5.3 |
| **T3** | Fiyat driftı | Web sitesi eski fiyatı gösterir → yanlış fiyat reklamı | S2 + süreç kontrolü |
| **T4** | **Hayalet üye** | İptal senkronize edilmezse app'te yaşamaya devam eder | M3 |
| **T5** | Yetim hesap | App indiren ama üye olmayan kişi | Kimlik doğrulama zorunlu |
| **T6** | **Sessiz veri driftı** | Personel CenterCom'da düzenler, bizim master kayıt yanlışlaşır | D2 + mutabakat mekanizması (§2.3) |

---

## 8. Kararlar

| # | Karar | Durum |
|---|---|---|
| **D1** | **CenterCom ders/kurs modülü üye-yüzü için emekli edilir.** Rezervasyon tek yerden — Soluty. | ⚠️ **Müşteriyle konuşulmalı** |
| **D2** | **Kişi ve sözleşme verisi CenterCom'da düzenlenmez.** Soluty panelinden düzenlenir, oradan akar. | ⚠️ **Müşteriyle konuşulmalı** |
| **D3** | **Üye verisinin ana kaynağı Soluty'dir** — üyelik yürütme durumu ve tahsilat hariç (§2.1). | ✅ Karar verildi |
| **D4** | **Sözleşme Soluty'de; tahsilat ve borç CenterCom'da.** | ✅ Karar verildi |
| **D5** | **Aidat tahsilatı Faz 1'de devralınmaz.** CenterCom'da kalır. | ✅ Karar verildi |
| **D6** | **§312k iptal butonu CenterCom'da bırakılır.** Biz durum değişikliğini okuruz. | ✅ Karar verildi |

---

## 9. Operasyonel Gerçeklik

Manuel akışın hacmi:
- Yeni üye: ayda ~20–40
- Veri değişikliği: bir avuç
- Durum değişikliği: birkaç

**%100 manuel bile olsa haftada 1–2 saat.** Ve bu, bugünkü kâğıt süreçten **daha az iş.**

Üstelik doğal bir yeri var: yeni üye geldiğinde personel zaten onunla ilgileniyor (kart, tanıtım, tur). CenterCom girişi o anda yapılır — **mevcut akışın parçası, ekstra sürtünme değil.**

**Ürün fikri:** Panelde **"CenterCom Aktarım Kuyruğu"** — yeni kayıt hazır formatlanmış, kopyala-yapıştır butonlu, kontrol listeli. Angarya değil, **tasarlanmış akış** gibi hissettirir.

---

## 10. Hukukçuya Doğrulatılacaklar

| # | Konu |
|---|---|
| L1 | Elektronik SEPA mandate'in imza formu — QES şart mı? |
| L2 | İspat yükü karşısında hangi kanıt seti yeterli? |
| L3 | 16 yaş altı üye için veli onayı — DSGVO Art. 8 |
| L4 | Açık grup sohbeti → barındırma sağlayıcısı sorumluluğu (DDG, DSA) |
| L5 | Çocuk üyeli platformda koruyucu tedbir yükümlülüğü (JuSchG) |
| **L6** | **AVV / Auftragsverarbeitungsvertrag** — CenterCom→Soluty veri aktarımı için (§3.5) |

---

## 11. Stratejik Not — "CenterCom-Completer" Vizyonu

Uzun vadede Soluty, CenterCom kullanan **17.000+ DACH işletmesi** için modern/AI'lı bir tamamlayıcı ürün olma potansiyeline sahip.

**Ama bu tez tehlikeli bir bağımlılık yaratır:** Başkasının platformunun eksiği üzerine ürün kurmak. CenterCom o eksiği kapatırsa ya da kapıyı kapatırsa, tez çöker.

**Bu yüzden:**
- Mimari **backend-agnostic** kurulur. CenterCom **ilk entegrasyon hedefi**, tek dayanak değil.
- Copilot/AI katmanı **öncelikle bizim sahip olduğumuz veriden** beslenir (app kullanımı, dijital sözleşme, kuşak/sınav, shop, web etkileşimi). CenterCom verisi **zenginleştirme katmanı**, temel değil.
- Aynı ürün Magicline kullanan bir stüdyoya da, hiç backend kullanmayan bir stüdyoya da satılabilmelidir.

**§2.1'deki sahiplik modeli bu vizyonu doğrudan destekler:** üye verisinin master'ı bizdeyse, CenterCom değiştirilebilir bir bileşene dönüşür.

---

*Belge sonu — v2*
