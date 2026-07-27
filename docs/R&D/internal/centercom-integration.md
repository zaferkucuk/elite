# CenterCom Entegrasyon — Bağımlılıklar, Sorular, Senaryolar

**Durum:** İÇ DOKÜMAN — müşteriye gitmez
**Tarih:** 27 Temmuz 2026 (v3)
**İlgili:** `docs/R&D/elite-strategic-roadmap-V2.md` §5.5, §5.6

> **v3 değişikliği:** Müşteri (Oğuz, Elite) sorulara cevap verdi. Üç etki: (1) fiziksel giriş/dolap kilidi teyit edildi, ders bazlı katılım kaydının mekanizması netleşiyor — barkod/QR okuma şart değil; (2) **D6 revize edildi** — fesih talebi Soluty tarafında başlar; (3) ödeme görünürlüğü isteği iki farklı şeyi kastediyor olabilir, netleştirme gerekiyor.

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

## 1.5 ✅ Müşteri Teyidi (27 Temmuz 2026, Oğuz — Elite)

Zafer'in müşteriye sorduğu üç sorunun cevabı geldi. Bu, planlamayı **varsayımdan doğrulanmış bilgiye** taşıyor.

### Soru 1 — Fiziksel giriş / barkod

**Cevap:** *"Fiziksel giriş-çıkış ve dolap kilit sistemi CenterCom üzerinden devam edecek. Bu kısmı sistemimize dahil etmiyoruz."*

✅ **Teyit edildi** — turnike ve dolap donanımı bizim kapsamımızda değil, hiç olmadı, kalıyor.

⚠️ **Ama asıl soru cevaplanmadı.** Zafer'in sorusu barkodla ders bazlı check-in'in ne anlama geldiğiydi; cevap fiziksel turnikeyi teyit etti — farklı konu.

**Zafer'in çözümü:** Barkodlu giriş bizim tarafımızda **olmayacak.** Ders katılımı iki yoldan biriyle toplanacak:
- Antrenör dersi sonunda katılımcıları işaretler, **veya**
- Üye mobil uygulama üzerinden "derse katıldım/katılmadım" bilgisini bildirir

**Sonuç: kuşak sistemi bu veriyle sistemde yönetilecek — check-in mekanizması ne olursa olsun.** Bkz. §4.1 M1 revizyonu.

**Açık kalan:** Hangi yöntem (antrenör mü, üye kendi bildirimi mi, ikisi birden mi) — bkz. B15 (roadmap EK).

### Soru 2 — Ödeme/fatura/SEPA/POS/kasa

**Cevap:** *"Evet, üyelik ödemeleri, faturalar, SEPA, banka, POS ve kasa işlemleri CenterCom üzerinden devam edebilir."*

✅ **D5 teyit edildi.** Aidat tahsilatı CenterCom'da kalıyor, tasarım doğru.

**Ama Oğuz iki ek istek belirtti:**
1. *"Uygulama üzerinden ek satış imkanları"* — online mağaza, kıyafet, ekipman → **Faz 2 vizyonunu bağımsız olarak doğruluyor.**
2. *"Açık faturalarını veya ödeme durumlarını uygulama üzerinden görebilmeleri ve ödeme yapabilmeleri"* — ⚠️ **belirsiz, netleştirilmeli.**

**İki olası okuma:**
- **(a)** CenterCom'daki aidat/fatura durumunun uygulamada **görüntülenmesi** — bu §5.6'nın bağımlı olduğu senaryoya (B1) bağlıdır.
- **(b)** Uygulama üzerinden yapılan **yeni** satışların (seminer, PT, ürün) ödemesi — bu zaten §5.7'nin parçası, CenterCom'dan bağımsız.

**Bu ayrım kritik çünkü maliyeti çok farklı:** (a) CenterCom'un okuma erişimine muhtaç, garanti edilemez. (b) zaten kapsamda, garanti edilebilir.

→ **Müşteriye netleştirme sorusu gerekiyor** (bkz. B14, roadmap EK).

### Soru 3 — Dijital sözleşme / iptal

**Cevap:** *"Bu bölüm bizim için önemli"* — dijital sözleşme oluşturma, yenileme, **iptal/Kündigung**, sözleşme süresi/bitiş görünürlüğü, üyelik bilgisi yönetimi — hepsi uygulama üzerinden istendi.

✅ **§5.5 tasarımımızı bağımsız olarak doğruluyor** — biz tasarladık, müşteri aynısını kendi ağzıyla istedi.

⚠️ **Ama "iptal/Kündigung işlemleri" isteği D6 ile çatışıyor.** D6: *"§312k iptal butonu CenterCom'da bırakılır."* Aşağıda çözüldü — bkz. §2.4.

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
| Ders programı, rezervasyon, **ders bazlı katılım kaydı** | Soluty | **Soluty** |
| App profili, rozet, bildirim, seminer | Soluty | **Soluty** |
| Lead / deneme dersi | Soluty | **Soluty** |
| **Fesih talebi (başlangıcı)** | **Soluty** ⚠️ *(revize — bkz. 2.4)* | **Soluty** |
| ⚠️ **Üyelik yürütme durumu** (aktif / borçlu / dondurulmuş / iptal edilmiş) | **CenterCom** | **CenterCom** |
| ⚠️ **Aidat, borç, Mahnwesen, ödeme geçmişi** | CenterCom | **CenterCom** |
| Fiziksel giriş-çıkış, dolap kilidi | CenterCom | **CenterCom** *(müşteri teyidi)* |

### 2.2 Tek istisna — neden yürütme durumu bizde olamaz

Durumu **değiştiren olaylar CenterCom'da gerçekleşiyor:**
- Mahnwesen üyeyi askıya alır → CenterCom
- Tahsilat durması üyeliği sonlandırır → CenterCom
- Tahsilat başarısızlığı borç yaratır → CenterCom

**Biz bu olayları üretemeyiz. Sadece okuruz.** Okuyamazsak, personel bizim panelde elle işaretler.

### 2.3 ⚠️ Master olmak ilan edilmez, uygulanır

**Sorun:** Elite personelinin CenterCom'u gün boyu açık. Birisi bir adresi orada değiştirecek — alışkanlıktan. O an bizim "master" kaydımız **sessizce yanlış** olur.

**İki şey gerekli:**

1. **Kural (D2):** Kişi ve sözleşme verisi CenterCom'da düzenlenmez. Soluty panelinden düzenlenir, oradan akar.
2. **Mutabakat mekanizması:** Periyodik olarak CenterCom üye listesi çekilir, bizimkiyle karşılaştırılır. Fark varsa panelde uyarı.

**Sessiz drift'i görünür çatışmaya çevirmek.**

### 2.4 ⚠️ D6 REVİZYONU — Fesih akışının başlangıç noktası

**Eski D6:** *"§312k iptal butonu CenterCom'da bırakılır. Biz sadece durum değişikliğini okuruz."*

**Neden revize edildi:** Müşteri, fesih işlemlerinin **bizim sistemimizden** yapılabilmesini istedi (Soru 3). Ve Zafer'in gerekçesi güçlü: **üye, üyeliğini bizim uygulamamızdan kuruyor. Üyenin doğrudan erişebildiği tek arayüz bizimki.** CenterCom bir arka ofis aracı — üye ona hiç dokunmuyor. Yani fesih talebini "CenterCom'un butonuna yönlendirerek" çözmek, üyenin hiç göremediği bir yere yönlendirmek anlamına gelir. Pratikte çalışmaz.

**Yeni D6:**

> **Fesih talebi Soluty platformunda başlar** (üyenin tek temas noktası). Talep kaydedildikten sonra, tahsilatı durdurmak için **mevcut sisteme bir olay olarak iletilir.**
>
> **Bilinen:** Süreç net — üye bizim uygulamamızı kullanıyor → üyeliği bizim sistemden kuruluyor → fesihi de bizim sistemden talep etmeli.
> **Bilinmeyen (tek soru):** Bu talep CenterCom'a **nasıl** ulaşacak — personel elle mi işleyecek, yoksa entegrasyonla otomatik mi yazılacak?

Bu, §312k'nın hukuki gerekliliğiyle de daha uyumlu bir konum olabilir: buton, sözleşmenin kurulduğu yerle **aynı erişilebilirlikte** olmalıdır. Sözleşme bizim platformumuzda kuruluyorsa, fesih erişilebilirliğinin de orada olması hukuken daha savunulabilir bir pozisyondur.

**Ama bu bir hukuki iddia değil, bir yön.** Kesinleşmesi için hukukçu onayı gerekir — bkz. L7.

**Mekanizma sorusu — CenterCom'a sorulacak (bkz. Q22):** Fesih olayı elle mi girilecek, entegrasyonla mı? Cevap, D2'nin (CenterCom'da düzenleme yasağı) fesih için de geçerli olup olmadığını belirler — muhtemelen **istisna gerekir**: personel fesih durumunu CenterCom'da işaretlemek zorunda kalabilir, çünkü tahsilatı durduracak olan sistem odur.

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
| IBAN / mandate verisi | **SHOULD** | ⚠️ DSGVO hassas |
| **Turnike giriş geçmişi** | **SHOULD** ⬆️ | Bkz. §3.3 — kuşak baseline'ı için tek gerçekçi kaynak |
| POS satın alma geçmişi | NICE | Faz 2 için |

### 3.2 ⚠️ Gizli iş kalemi — kuşak verisi hiçbir yerde yok

**CenterCom'da kuşak verisi YOK.** Antrenörlerin hafızasında ve kâğıtta.

Bu bir *aktarım* değil, bir **veri üretimi projesi:** 900 üye × mevcut kuşak seviyesi, antrenörler girecek. **Faz 1'in en büyük gizli iş kalemi.**

### 3.3 Baseline problemi

Kuşak sistemi *"sonraki sınav için X antrenman"* mantığıyla çalışıyor. Lansmanda sıfırdan saymaya başlarsak, sınava 2 ay kalmış üye **"yeni başlamış"** görünür.

**Çözüm seçenekleri:** (a) antrenör yaklaşık sayı girer, (b) **CenterCom turnike geçmişi çekilir** — tek gerçekçi baseline, (c) ilk çevrimin yaklaşık olduğu kabul edilir.

### 3.4 Migration soruları (CenterCom'a)

| # | Soru |
|---|---|
| Q16 | Üye verisi export edilebiliyor mu? Hangi format? |
| Q17 | Export'u **Elite kendi ekranından** yapabiliyor mu? |
| Q18 | Export ücretli mi? |
| Q19 | Taranmış sözleşme PDF'leri toplu indirilebiliyor mu? |
| Q20 | Turnike/check-in geçmişi export edilebiliyor mu? Ne kadar geriye? |
| Q21 | Veli–çocuk ilişkisi export'ta yer alıyor mu? |

### 3.5 ⚠️ DSGVO — AVV zorunlu

Elite = Verantwortlicher, Soluty = Auftragsverarbeiter → **AVV zorunlu.** *(Hukukçuya — L6.)*

---

## 4. Sürekli Veri Akışı

### 4.1 MUST — akmak zorunda

| # | Akış | Yön | Neden | Elle olur mu? |
|---|---|---|---|---|
| M1 | **Kimlik eşleşmesi** (CenterCom üye no ↔ app hesabı) | ← Oku | Bu olmadan hiçbir şey çalışmaz | ✅ Migration'da kurulur |
| M2 | **Yeni üye + sözleşme + mandate verisi** | → Yaz | Girmezse fatura kesilmez. **Para kaybı.** | ✅ Personel girer |
| M3 | **Üyelik durumu** (aktif/iptal/dondurulmuş) | ← Oku | İptal olan üye app'i kullanmaya devam eder → hayalet üye | ✅ Periyodik export |
| M4 | **İletişim/adres değişikliği** | → Yaz | Fatura yanlış adrese gider | ✅ Personel görevi |
| M5 | **IBAN değişikliği → yeni mandate** | → Yaz | Tahsilat durur | ✅ Sözleşme akışı olayı |
| **M6** | **Fesih olayı** (Soluty'de başlar → CenterCom'da tahsilatı durdurur) | → Yaz | Fesih edilen üyenin tahsilatı durmalı | ✅ Personel elle işaretler *(mekanizma netleşecek — Q22)* |

**Hepsi elle yapılabilir. Hiçbiri CenterCom işbirliği gerektirmez.**

> **Kritik ayrım:** Veri akışının **MUST** olması, **otomasyonun** MUST olduğu anlamına gelmez. Akış zorunlu — otomasyon konfor.

### 4.2 SHOULD — olmadan çalışır, ama görünür boşluk

| # | Akış | Yön | Değer | Risk |
|---|---|---|---|---|
| S1 | **CenterCom aidat/fatura durumu** *(⚠️ kapsamı netleşecek — bkz. §1.5 Soru 2)* | ← Oku | Üye "aidatım geçti mi" sorusunu app'te sorar | Yoksa "tek platform" hikâyesinde delik |
| S2 | **Üyelik tipi / fiyat kataloğu** | ← Oku | Web sitemiz doğru fiyatı göstermeli | ⚠️ Drift = hukuki risk |

> **Not:** S1, §5.7'deki **yeni satışların ödemesi** (bilet, PT, ürün) ile **karıştırılmamalı.** Yeni satışlar zaten CenterCom'dan bağımsız kuruluyor. S1 sadece CenterCom'daki **mevcut aidat/fatura kaydının görüntülenmesi** ile ilgili — ve bu, B1'e (CenterCom okuma erişimi) bağlı.

### 4.3 NICE — iyileştirir

| # | Akış | Yön | Ne kazandırır |
|---|---|---|---|
| N1 | Turnike giriş verisi | ← Oku | "3 haftadır gelmedi" sinyali. **+ Migration baseline (§3.3)** |
| N2 | Borç / Mahnwesen durumu | ← Oku | Borçlu üyeye özel iletişim |
| N3 | RFID kart ↔ app eşleşmesi | ← Oku | Sadece N1 alınırsa gerekli |
| N4 | POS satın alma geçmişi | ← Oku | Faz 2'de birleşik görünüm |

### 4.4 SIFIR ALIŞVERİŞ — temiz sınır

CenterCom'a **hiç dokunmayan** yetenekler:

Ders programı ve rezervasyon · **Ders bazlı antrenman kaydı** (antrenör işaretlemesi veya üye bildirimi — barkod/QR zorunlu değil) · Kuşak / sınav / teknik / gelişim · Rozet ve motivasyon · Seminer / etkinlik / bilet · Rezerve edilebilir hizmetler · Push / haber / bildirim · Antrenör profilleri · Web sitesi içeriği · Deneme dersi ve lead · **Dijital sözleşme toplama + imza + arşiv + yenileme + fesih talebinin başlatılması**

> **Fiziksel giriş-çıkış ve dolap kilidi bilinçli olarak CenterCom'da bırakılıyor** (müşteri teyidi — §1.5 Soru 1). Bu bir kayıp değil, **kasıtlı bir sınır.**

---

## 5. SEPA Mandate — Hukuki Durum

*(Değişmedi — bkz. v2)*

### 5.1 Doğrulanmış

Mandate, borçlu (üye) ile alacaklı (Elite) arasındadır — CenterCom taraf değildir. Arşivleme yükümlülüğü alacaklıdadır. CenterCom'un ihtiyacı mandate belgesi değil, veri alanlarıdır (IBAN, BIC, Mandatsreferenz, tarih, sıra tipi). 8 hafta koşulsuz iade, 13 ay itiraz hakkı, 36 ay geçerlilik süresi.

### 5.2 Çelişkili — ⚠️ HUKUKÇUYA

İmza formu net değil (imzasız mı, QES mi). Ortak nokta: ispat yükü alacaklıdadır. Tasarım hedefi kanıt kalitesi — zaman damgası, IP, cihaz, metin kaydı, değiştirilemez arşiv.

### 5.3 ⚠️ EN KRİTİK TEKNİK TUZAK — Mandatsreferenz

Mandate'teki referans, CenterCom'un banka dosyasındaki referansla **birebir aynı olmalı.** CenterCom'a sorulacak en kritik teknik soru (Q6).

---

## 6. CenterCom'a Sorulacaklar

### 6.1 Veri erişimi

Q1–Q5 — *(değişmedi, bkz. v2)*

### 6.2 SEPA / Mandate

Q6–Q10 — *(değişmedi, bkz. v2)*

### 6.3 Migration

Q16–Q21 — bkz. §3.4

### 6.4 Fesih mekanizması — YENİ

| # | Soru |
|---|---|
| **Q22** | **Fesih olayı CenterCom'a nasıl iletilecek?** Personel elle mi işaretleyecek, yoksa bir toplu/otomatik yol var mı? |
| **Q23** | CenterCom'un kendi fesih/§312k akışı bugün nasıl işliyor — personel mi tetikliyor, üye mi doğrudan CenterCom'a mı erişiyor? |

### 6.5 Ödeme görünürlüğü — YENİ

| # | Soru |
|---|---|
| **Q24** | Üye/aidat durumu ve açık fatura bilgisi **export veya API ile okunabilir mi?** (S1'in gerçekleşme koşulu) |

### 6.6 Diğer

| # | Soru |
|---|---|
| Q11 | Aile hesabı / veli-çocuk yapısı var mı? |
| Q12 | Ruhezeit (dondurma) akışı var mı? |
| Q13 | Push bildirim yeteneği var mı? |
| Q14 | Sözleşme AGB versiyonlama yapıyor mu? |
| Q15 | DATEV/Lexware aktarımı Elite'te **aktif mi?** |

---

## 7. Tuzaklar

| # | Tuzak | Sonuç | Önlem |
|---|---|---|---|
| **T1** | **Çift rezervasyon sistemi** | CenterCom'un Kursverwaltung'u açık kalırsa iki yerde rezervasyon = kaos | **D1 — müşteriyle konuşulmalı** |
| **T2** | Mandatsreferenz uyuşmazlığı | İtirazda savunmasızlık | §5.3 |
| **T3** | Fiyat driftı | Yanlış fiyat reklamı | S2 + süreç kontrolü |
| **T4** | Hayalet üye | İptal senkronize edilmezse app'te yaşamaya devam eder | M3 |
| **T5** | Yetim hesap | App indiren ama üye olmayan kişi | Kimlik doğrulama zorunlu |
| **T6** | Sessiz veri driftı | Personel CenterCom'da düzenler, master kayıt yanlışlaşır | D2 + mutabakat mekanizması |
| **T7** | **Fesih olayı unutulur/gecikir** | Üye bizim sistemde "fesih edildi" görünür ama CenterCom hâlâ tahsilat yapar — **para iadesi ve güven sorunu** | Personel süreci net tanımlanmalı; ideal olarak entegrasyon (bkz. Q22) |

---

## 8. Kararlar

| # | Karar | Durum |
|---|---|---|
| **D1** | CenterCom ders/kurs modülü üye-yüzü için emekli edilir. Rezervasyon tek yerden — Soluty. | ⚠️ Müşteriyle konuşulmalı |
| **D2** | Kişi ve sözleşme verisi CenterCom'da düzenlenmez. Soluty panelinden düzenlenir. | ⚠️ Müşteriyle konuşulmalı — **fesih için istisna gerekebilir (bkz. D6)** |
| **D3** | Üye verisinin ana kaynağı Soluty'dir — yürütme durumu ve tahsilat hariç. | ✅ Karar verildi |
| **D4** | Sözleşme Soluty'de; tahsilat ve borç CenterCom'da. | ✅ Karar verildi |
| **D5** | Aidat tahsilatı Faz 1'de devralınmaz. CenterCom'da kalır. | ✅ **Müşteri teyit etti** (§1.5 Soru 2) |
| **D6** | ~~§312k iptal butonu CenterCom'da bırakılır.~~ → **REVİZE:** Fesih talebi Soluty platformunda başlar (üyenin tek temas noktası). CenterCom'a bir olay olarak iletilir — mekanizma (elle/entegrasyon) açık. | ✅ **Revize edildi — müşteri talebiyle (§1.5 Soru 3)** |
| **D7** | Fiziksel giriş-çıkış ve dolap kilidi Soluty kapsamı dışında, CenterCom'da kalır. | ✅ **Müşteri teyit etti** (§1.5 Soru 1) |
| **D8** | Ders bazlı antrenman katılımı barkod/QR okumaya bağlı değil — antrenör işaretlemesi veya üye bildirimi ile toplanabilir. Mekanizma netleşecek. | ✅ Karar verildi — mekanizma B15'te açık |

---

## 9. Operasyonel Gerçeklik

Manuel akışın hacmi: yeni üye ayda ~20–40, veri değişikliği bir avuç, durum değişikliği birkaç, **fesih birkaç.**

**%100 manuel bile olsa haftada 1–2 saat.** Bugünkü kâğıt süreçten daha az iş.

**Ürün fikri:** Panelde **"CenterCom Aktarım Kuyruğu"** — yeni kayıt/fesih hazır formatlanmış, kopyala-yapıştır butonlu, kontrol listeli.

---

## 10. Hukukçuya Doğrulatılacaklar

| # | Konu |
|---|---|
| L1 | Elektronik SEPA mandate'in imza formu — QES şart mı? |
| L2 | İspat yükü karşısında hangi kanıt seti yeterli? |
| L3 | 16 yaş altı üye için veli onayı — DSGVO Art. 8 |
| L4 | Açık grup sohbeti → barındırma sağlayıcısı sorumluluğu |
| L5 | Çocuk üyeli platformda koruyucu tedbir yükümlülüğü (JuSchG) |
| L6 | AVV / Auftragsverarbeitungsvertrag — veri aktarımı için |
| **L7** | **§312k erişilebilirlik şartı** — sözleşme kuruluşu Soluty platformundaysa, fesih erişilebilirliğinin de orada olması hukuken gerekli mi? Yeni D6'nın hukuki dayanağı. |

---

## 11. Stratejik Not — "CenterCom-Completer" Vizyonu

Uzun vadede Soluty, CenterCom kullanan **17.000+ DACH işletmesi** için modern/AI'lı bir tamamlayıcı ürün olma potansiyeline sahip.

**Ama bu tez tehlikeli bir bağımlılık yaratır.** Bu yüzden mimari **backend-agnostic** kurulur. CenterCom **ilk entegrasyon hedefi**, tek dayanak değil. Copilot/AI katmanı öncelikle bizim sahip olduğumuz veriden beslenir; CenterCom verisi zenginleştirme katmanı, temel değil.

**§2.1'deki sahiplik modeli — ve yeni D6 — bu vizyonu güçlendiriyor:** üye verisinin master'ı bizdeyse, üye fesih dahil her işlemi bizim platformumuzdan yapıyorsa, CenterCom giderek değiştirilebilir bir bileşene dönüşür.

---

*Belge sonu — v3*
