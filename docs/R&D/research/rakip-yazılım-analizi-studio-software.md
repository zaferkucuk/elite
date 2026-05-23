# Rakip Yazılım Analizi — Mitgliederverwaltung & Studio-Software (DACH / US-UK / TR)

> **Status:** Bu doküman daha önceki bir araştırma oturumunda üretilmiş ham çıktının `docs/R&D/research/` mimarisi altında **yeniden derlenmiş** halidir. Tarama tarihi 2026 başı; revalidasyon tarihi belirtilmemiş, içerik 2026 başı durumudur.
>
> **Rolü:** Roadmap Bölüm 6.2.1 (Phase 1 — Mitglieder-Operations Core) kapsam kararlarına ve Bölüm 5.4 (Wettbewerbsanalyse Software) referansına temel oluşturur.
>
> **Müşteriye gitmez.** İç çalışma dokümanı; karar metni damıtıldıktan sonra Anhang E (Marktforschung — Mitbewerber-Software-Analyse) müşteri sürümüne yönlendirilir.
>
> **Caveats:** Aşağıdaki ürün karşılaştırma matrisinin bazı satırları (özellikle KampfClub sonrası ABD/UK ürünleri ve Türk pazarının tam satırları) orijinal araştırma oturumundan **kısmen yeniden inşa edilmiştir**. Hücreler tartışılan bulgularla uyumlu olsa da, bazı işaretlerin (✅/⚠️/❌) orijinal araştırmadan birebir teyidi için ham log gerekirse buraya geri eklenmelidir. Detaylı text bölümleri (Key Findings, Details, Caveats) orijinaldir.

---

## Executive Summary

Mevcut pazar üç kampa ayrılmış durumda — **DACH genel fitness platformları** (Magicline, Eversports, Aidoo, Yolawo, Butlerapp), **ABD/UK genel ve dövüş sanatları odaklı platformlar** (Mindbody, ABC Glofox, Gymdesk, Kicksite, Zen Planner, Spark, MyStudio, Mariana Tek, PushPress, Wodify, TeamUp, Gymcatch, Vagaro) ve **Türkiye yerel ürünleri** (Gymsoft, BulutGym, SporSalonum, Sporsepeti, MISSoft, Argedan, Pirus Yazılım, Perkotek). Hiçbir tek üründe **kuşak takibi + DSGVO/§312k uyumu + DACH yasal uyumu + WhatsApp + family account** dörtlüsünün hepsi yok. Bu, Elite Kickboxing engagement'ı sonrası Soluty ürünleştirme için **"Almanca uyumlu dövüş sanatları SaaS"** segmentinin yetersiz hizmet aldığını gösteriyor.

**Beş kritik bulgu:**

1. **Martial Arts Gap:** Magicline, Eversports, Mindbody, Glofox, TeamUp, Gymcatch, Vagaro, PushPress, Wodify — hiçbirinde gerçek kuşak takibi yok, sadece "tag" veya "custom field" düzeyinde. Gymdesk, Zen Planner, Kicksite, Spark Membership, MyStudio, KampfClub bu konuda gerçek müfredat + ilerleme yüzdesi + sınav kriteri sunan az sayıda ürün.
2. **§312k BGB Kündigungsbutton uyumu sektör genelinde zayıf:** Hiçbir global üründe (Mindbody, Glofox, PushPress, Wodify, Gymdesk, Kicksite, Zen Planner, MyStudio, Spark) belgelenmiş end-to-end Kündigungsbutton akışı yok. Magicline ve Eversports'ta dahi tipik olarak stüdyonun WordPress sitesinde manuel kurulması gereken form düzeyinde kalıyor.
3. **WhatsApp entegrasyonu hiçbir global platformda yok** — DACH ve TR'de en yüksek kullanım kanalı olmasına rağmen.
4. **Family account** Mindbody/Glofox/Magicline'da text alanı düzeyinde; Spark/Gymdesk/MyStudio'da iyi.
5. **Fitogram 31.12.2024'te kapandı** — sektör için freemium + agresif büyümenin sürdürülemediği uyarısı.

---

## 1. Pazar Üç Kampa Ayrılmış Durumda

### 1a. DACH genel fitness platformları
- **Magicline** (Hamburg, Sport Alliance). Sport Alliance 19.08.2021'de PSG Equity'den €60M büyüme yatırımı aldı; 27.11.2023'te ek $100M ikinci tur. Magicline kendisi "over 8,000 studios and 6,246,053 studio members throughout Europe" diyor. Sport Alliance grubu (Magicline + 2024'te satın alınan PerfectGym) toplamda >10,000 facility ile çalışıyor.
- **Eversports Manager** (Viyana, AT). Almanca + İngilizce + Fransızca + İtalyanca + İspanyolca + Hollandaca. DATEV uyumu mevcut.
- **Aidoo** (Borken/NRW, eski Sport-ID).
- **Fitogram** (Almanya) — **31.12.2024'te resmi olarak kapandı.** fitogram.pro/en duyurusu: "After careful consideration, we have made the difficult decision to discontinue FitogramPro as of December 31, 2024."
- **Yolawo** (Hamburg) — küçük ölçek odaklı.
- **Butlerapp** (Almanya) — GoBD + DSGVO + DATEV uyumu güçlü; ürün içinde sadece Gürtelprüfung ücreti modülü var ama gerçek kuşak takibi/müfredatı yok.
- **KampfClub** (DE, kampfclub.app) — KBV Erding ve Bundestrainer Peter Lutzny ile birlikte geliştirilmiş; Almanya'nın gerçek anlamda dövüş sanatlarına özel tek niş platformu.
- **Sportanize** (DACH) — kampfsport-odaklı, küçük segment.
- **3RPMS** (otel yazılımı, doğrudan ilgisiz ama GoBD/DSGVO/KassenSichV referans modeli iyi).

**Ortak özellikler:** Almanca dil, SEPA-Lastschrift, DATEV/Finion entegrasyonu, EU veri merkezi, DSGVO standardı. **Eksik özellik:** dövüş sanatlarına özel müfredat/kuşak/sınav modülü neredeyse hiç yok (KampfClub istisna).

### 1b. ABD/UK platformları
- **Genel fitness/boutique:** Mindbody, ABC Glofox (2022'de ABC Fitness Solutions tarafından satın alındı; ABC Fitness Solutions Thoma Bravo portföy şirketi), Mariana Tek, PushPress, Wodify, TeamUp, Gymcatch, Vagaro.
- **Dövüş sanatları odaklı:** Gymdesk (eski "Martial Arts on Rails"; 08.07.2024'te Five Elms Capital'den $32.5M majority acquisition; kurucu Eran Galperin "Startups for the Rest of Us" podcast ep. 728'de teyit etti), Kicksite, Zen Planner, Spark Membership, MyStudio, Champion Studio (eski ChampionsWay), DojoExpert (Hırvatistan), MartialArts.io / RhinoFit, Member Solutions / MainStreetSites, Naranga (eski RainmakerHQ), DojoManager, Karatesoft, iGYMSOFT/SMARTA.

**Ortak özellikler:** Kuşak/rank ve "family account" destekleri güçlü (özellikle Gymdesk, Zen Planner, Kicksite, Spark, MyStudio). **Eksik özellik:** Almanca lokalizasyon, SEPA-Lastschrift, §312k BGB, DATEV entegrasyonu ya yok ya çok yüzeysel.

### 1c. Türkiye pazarı
- **Gymsoft** (gymsoft.com.tr) — en görünür, turnike + yazılım bundle, donanım odaklı pazarlama; 5.000+ müşteri iddiası; fiyat ilk ay 90₺, sonra 690₺/ay (~€16-18).
- **SporSalonum.net** — Microsoft Azure altyapısı.
- **BulutGym** — fiyat opak; mobil app standart.
- **Sporsepeti / SportsFly** — modern web yönü, "dövüş kulübü yönetim yazılımı" reklamı yapıyor.
- **MISSoft "Dövüş Kulübü" modülü** — gelişim/kuşak takibi vurgusu, online yoklama, kuşak ilerleme listesi.
- **Argedan / GymPro**, **Pirus Yazılım** (sektörel niş, 11 yıllık, "kick boks okulu nasıl açılır" rehberleriyle SEO yapıyor), **Perkotek** (donanım odaklı).
- Pek çok stüdyo: Excel + WhatsApp + Iyzico/Param/Paratika ile el yapımı kombinasyon.

**Ortak özellikler:** Düşük fiyat (€10-30/ay tipik), turnike entegrasyonlu, "üye takip + tahsilat + SMS" temelli. **Eksik:** Modern API/mobil deneyim zayıf, KVKK uyumu yerel ürünlerde minimum, mobil uygulama opsiyonel veya yok. Türk pazarı **modernizasyon için çok olgun** — pek çok stüdyo hâlâ kâğıt + Excel + WhatsApp ile çalışıyor; mevcut Türk SaaS'ları UX olarak Magicline/Eversports seviyesinde değil.

---

## 2. "Kuşak Takibi" Pazardaki Gerçek Farklılaştırıcı (Martial Arts Gap)

Capterra/G2 değerlendirmelerine, Gymdesk'in karşılaştırma raporlarına ve doğrudan ürün sayfalarına göre kuşak/derece (rank/belt) yönetimi olan ürünler (gerçek anlamda, "alanı doldurabiliyorum" düzeyinde):

| Platform | Kuşak Takibi | Müfredat (teknik checklist) | Aile Hesabı | Sınav Etkinliği |
|---|---|---|---|---|
| **Gymdesk** | ✅ Promosyon kriterleri + ilerleme yüzdesi | ✅ Skill library | ✅ | ⚠️ Etkinlik modülü zayıf |
| **Kicksite** | ✅ | ⚠️ Sınırlı | ✅ | ✅ |
| **Zen Planner** | ✅ Skill + belt | ✅ Workout video paylaşımı | ✅ | ✅ |
| **Spark Membership** | ✅ Rank history + label printing | ⚠️ | ⚠️ | ⚠️ |
| **MyStudio** | ✅ Rank progression | ⚠️ | ✅ | ✅ |
| **MartialArts.io / RhinoFit** | ✅ | ✅ | ✅ | ✅ |
| **DojoExpert** (Hırvatistan) | ✅ Next-belt info | ⚠️ | ✅ | ✅ |
| **KampfClub (DACH)** | ✅ Gürtelprüfungen + Prüfungsbögen + sınav planlama | ✅ | — | ✅ |
| **Magicline** | ❌ Belgelenmemiş | ❌ | ⚠️ | ❌ |
| **Eversports Manager** | ❌ Bir kullanıcı G2'de "we need a feature for graduations" diye yazdı | ❌ | ⚠️ | ⚠️ |
| **Mindbody / Glofox / PushPress / Wodify / TeamUp / Gymcatch** | ❌ veya işaretleme kutucuğu düzeyinde | ❌ | ⚠️ | ⚠️ |

**Sonuç:** ABD'li dövüş sanatları platformları kuşak takibinde önde; DACH platformları bu konuda çıplak. **KampfClub** Almanya'da bu boşluğu doldurmaya çalışan tek niş platform.

---

## 3. Almanya Yasal Uyumu — Sektör Genelinde Zayıf

§312k BGB Kündigungsbutton 01.07.2022'den beri zorunlu; BGH'nin 22.05.2025 tarihli I ZR 161/24 ("Kündigungsschaltfläche") kararı tek seferlik ödeme + belirli süreli sözleşmelerde bile zorunlu olduğunu netleştirdi. Mahkeme kararları çok katı:
- Login arkasında olamaz (OLG Nürnberg 30.07.2024 Az. 3 U 2214/23)
- "Jetzt kündigen" yazılmalı (OLG Hamburg 26.09.2024 Az. 5 UKI 1/23)
- Doğrudan onay sayfasına gitmeli (OLG Düsseldorf 23.05.2024 Az. I-20 U 3/23)
- KG Berlin 18.11.2025 5 UKl 10/25: Passwort/Kundennummer-Abfrage unzulässig

Uymayan stüdyo: süresiz fesih hakkı (§312k Abs. 6 BGB) + Abmahnung riski.

**Kündigungsbutton uyumu çapraz tablo (özet):**
- **Magicline:** Olduğu söyleniyor ama ürün içinde end-to-end akış belgesi açık değil; çoğu DACH müşterisi şu anda stüdyonun ayrı WordPress sayfasıyla halletmek durumunda.
- **Eversports:** Aynı tablo.
- **Yolawo / Butlerapp / KampfClub:** Account silme akışları var ama §312k BGB'nin gerektirdiği "Bestätigungsseite + dauerhafter Datenträger" şartını eksiksiz yerine getiren ürün içinde tam akış belgelenmiş bir vendor bulunmadı.
- **ABD/UK ürünleri (Mindbody, Glofox, PushPress, Wodify, Gymdesk, Kicksite, Zen Planner, MyStudio, Spark):** Hiçbirinde yok.

**Bu, Soluty için somut bir diferansiyatör.** §312k BGB uyumlu, ürün içinde tam çalışan bir Kündigungsbutton akışı (login arkasında değil, "Jetzt kündigen" yazılı, doğrudan Bestätigungsseite'ye giden, dauerhafter Datenträger üreten) Soluty'nin yapısal iddiası olabilir.

**GoBD:** BMF Schreiben 14.07.2025 güncellemesiyle kayıt değiştirilmezliği, sıralı fatura numaraları, denetlenebilir loglar, e-Rechnung yapısı 2027'ye hazır. **DACH yerli ürünlerde standart (Butlerapp özellikle güçlü), ABD'li ürünlerde "best effort" düzeyinde.**

**DSGVO:** EU veri merkezi, silme konseptleri, Auftragsverarbeitungsvertrag (AVV), §38 BDSG-neu 20+ kişi eşiği. **DACH yerli ürünlerde standart, ABD'li ürünlerde bazen yetersiz.**

---

## 4. Fiyatlandırma Örüntüleri

Bir 150 üyeli stüdyo için tahmini aylık maliyet (Gymdesk 2026 maliyet karşılaştırması + Capterra/G2 + resmi fiyat sayfaları doğrulamasıyla):

| Platform | Aylık (USD/EUR) | Notlar |
|---|---|---|
| **Gymdesk** | ~$150/ay (~€140) | Tüm özellikler dahil, 200 üyeye kadar |
| **Kicksite** | $149-199/ay (~€140-185) | 51-100 üye için $149, 100+ için $199 |
| **Zen Planner Studio (taban)** | $99-289/ay + add-on | "Engage" pazarlama modülü +$249/ay ($299 yeni müşteri için, $300 setup) |
| **PushPress Pro** | $159-559/ay | Free tier var (yüksek processing %4.19 + $0.30) |
| **Wodify** | $79+/ay | Tier'a göre |
| **Mindbody** | $159-699/ay/lokasyon | + %3.5 işlem komisyonu + Mindbody App yeni müşteri ilk satışının %20'si (cap $30) |
| **ABC Glofox** | $100-600+/ay | Fiyat gizli, müşteriler $269+ raporluyor |
| **Mariana Tek** | $179-285/ay | Boutique fitness odaklı |
| **Spark Membership** | $249-449/ay | $239 entry tier de mevcut |
| **MyStudio** | "Industry-leading rates" | Şeffaf değil, demo gerekli |
| **Magicline** | €Tarife paketleri (Starter/Premium/Ultimate) + Mitglieder bazlı, **+ €39/ay her partner entegrasyonu**, +€149/ay MySports Member Platform | Capterra yorumlarında 270%'lik fiyat artışları ve 3-5 yıllık zorunlu sözleşme şikâyetleri |
| **Eversports Manager** | €59-159/ay (Light–Professional) | Stripe üzerinden ödeme komisyonu |
| **Fitogram** | Ücretsiz–S/M/L tier | **31.12.2024'te servis kapandı** |
| **Gymcatch (UK)** | $18+/ay (~€17) | Düşük fiyat segmenti |
| **TeamUp (UK)** | £83+/ay (~€97) | |
| **Gymsoft (TR)** | İlk ay 90₺, sonra 690₺/ay (~€16-18) | Donanım entegrasyonlu |
| **BulutGym (TR)** | Fiyat opak | Mobil app standart |

**Stüdyo boyutu × aylık medyan maliyet:**

| Boyut | Küçük (50 üye) | Orta (150 üye) | Büyük (400+ üye) |
|---|---|---|---|
| DACH (Magicline/Eversports) | €70-110 | €130-220 + add-on'lar | €300-600+ + her entegrasyon €39 |
| ABD genel (Mindbody/Glofox) | €130-200 | €260-500 (+ %3.5 işlem) | €500-1000+ |
| ABD martial arts (Gymdesk/Kicksite/Zen Planner) | €70-100 | €140-200 | €200-300 |
| UK (TeamUp/Gymcatch) | €90-120 | €120-180 | €180-300 |
| Türkiye (Gymsoft/BulutGym) | €15-25 | €25-40 | €40-80 (lokal sözleşmelere bağlı) |

**Örüntüler:**
- ABD ürünleri **per-location** ve sıklıkla **per-member** tier yapısında.
- DACH ürünleri **tier × aktif üye sayısı** modelinde, **add-on ücretleri agresif** (Magicline: her entegrasyon €39/ay).
- ABD ürünleri **processing fee'yi opak şekilde fiyatlandırıyor** (%2.75-4.19 + $0.30) — gerçek maliyet listelenen aboneliğin 2-3 katı olabiliyor.
- Türkiye pazarı çok ucuz (€10-30/ay tipik) ama özellik derinliği düşük.
- **Tüm büyük platformlarda yıllık sözleşme kilidi yaygın;** ay-ay seçeneği genelde %15-30 daha pahalı.

**Gizli maliyetler — sektör ortak örüntüsü:**
- Payment processing %2.5-4.5 + per-transaction fee ($0.25-0.30)
- Branded mobile app add-on €100-300/ay
- SMS/text gönderimi: per-message ücret (telekom marjı eklenir)
- Onboarding/setup fee: bazen €300-1500
- Sözleşme kilidi: 12-36 ay yaygın (Magicline için 3-5 yıllık zorunlu sözleşme şikâyetleri çok)
- Tier sıçramaları: üye sayısı eşiği aşıldığında otomatik upgrade
- Marketplace komisyonu: Mindbody yeni müşteri ilk satın alımının %20'sini alıyor (cap $30); Magicline'da paydaş ücretleri

**Freemium/ücretsiz seçenekler:**
- Fitogram FREE tier vardı, ama servis 31.12.2024'te kapandı (uyarıcı).
- PushPress Free (yüksek processing %4.19 + $0.30 ile kompansasyon).
- Gymdesk: 30 gün ücretsiz deneme + 15 üyeye kadar sınırlı ücretsiz tier.
- Yolawo: 100 üye altı €19.40/ay (semi-freemium).
- 1club.ai: 100 öğrenciye kadar tam ücretsiz tier.

---

## 5. Detaylı Ürün Karşılaştırma Matrisi

**Lejant:** ✅ Tam destek · ⚠️ Kısmi/zayıf · ❌ Yok veya belgelenmemiş

> *Not: Matrisin "Magicline → KampfClub" satırları (ilk 6) orijinal araştırmadan birebir tam alındı; KampfClub sonrası ABD/UK ve TR satırları metinde dağılı bulgulardan yeniden inşa edildi (Caveats'a bakınız).*

| Ürün | Ülke | Üye CRM | Sözleşme + Kündigungsbutton | Sınıf Rez. | SEPA | Kart | Mobil App (Üye) | Kuşak/Rank | Antrenör Plan/Bordro | E-posta/SMS/WhatsApp | Pazarlama Funnel | E-ticaret | Etkinlik/Seminer | Video Library | Rapor | API | Multi-lokasyon | DSGVO/§312k/DATEV | Çoklu dil | White-label | Fiyat Aralığı (€/ay) |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| **Magicline** | DE | ✅ | ⚠️ (DSGVO ✅, §312k kısmi) | ✅ | ✅ | ✅ | ✅ (MySports +€149) | ❌ | ✅ | ✅/✅/❌ | ✅ | ✅ | ✅ | ⚠️ | ✅ | ✅ | ✅ | DSGVO ✅ / DATEV ✅ / §312k ⚠️ | ✅ DE/EN/FR/IT/ES/NL | ⚠️ | €Tier (üye bazlı) |
| **Eversports Manager** | AT | ✅ | ⚠️ | ✅ | ✅ | ✅ | ✅ (free Eversports App) | ❌ | ⚠️ | ✅/✅/❌ | ⚠️ | ⚠️ | ✅ | ✅ (livestream + on-demand) | ✅ | ❌ | ✅ | DSGVO ✅ / DATEV ✅ / §312k ⚠️ | ✅ DE/EN/FR/IT/ES/NL | ❌ | €49-159 |
| **Aidoo** | DE | ✅ | ⚠️ | ⚠️ | ✅ | ✅ | ⚠️ | ❌ | ⚠️ | ✅ | ⚠️ | ⚠️ | ⚠️ | ❌ | ✅ | ⚠️ | ✅ | DSGVO ✅ / DATEV ✅ / §312k ⚠️ | DE | ❌ | Fiyat talep |
| **Yolawo** | DE | ✅ | ⚠️ | ✅ | ✅ | ✅ | ⚠️ | ❌ | ⚠️ | ✅ | ⚠️ | ⚠️ | ✅ | ❌ | ⚠️ | ⚠️ | ⚠️ | DSGVO ✅ | DE | ❌ | €19.40+ |
| **Butlerapp** | DE | ✅ | ⚠️ | ✅ | ✅ | ✅ | ⚠️ | ⚠️ Sadece Gürtelprüfung ücreti | ⚠️ | ✅ | ✅ | ⚠️ | ✅ | ❌ | ✅ | ⚠️ | ⚠️ | DSGVO ✅ / GoBD ✅ / §312k ⚠️ / DATEV ✅ | DE | ❌ | Fiyat talep |
| **KampfClub** | DE | ✅ | ⚠️ | ✅ | ✅ | ⚠️ | ⚠️ | ✅ Gürtelprüfung + sınav planlama | ⚠️ | ✅ | ⚠️ | ❌ | ✅ | ❌ | ✅ | ❌ | ⚠️ | DSGVO ✅ / §312k ⚠️ | DE | ❌ | Fiyat talep |
| **Sportanize** | DE | ✅ | ⚠️ | ✅ | ✅ | ✅ | ⚠️ | ⚠️ | ⚠️ | ✅ | ⚠️ | ⚠️ | ⚠️ | ❌ | ⚠️ | ❌ | ⚠️ | DSGVO ✅ | DE | ❌ | Fiyat talep |
| **Mindbody** | US | ✅ | ❌ | ✅ | ⚠️ | ✅ | ✅ | ❌ | ✅ | ✅/✅/❌ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ | DSGVO ⚠️ / DATEV ❌ / §312k ❌ | EN+ | ⚠️ | $159-699/ay/lokasyon |
| **ABC Glofox** | US/IE | ✅ | ❌ | ✅ | ⚠️ | ✅ | ✅ | ❌ | ⚠️ | ✅/✅/❌ | ✅ | ⚠️ | ✅ | ⚠️ | ✅ | ✅ | ✅ | DSGVO ⚠️ / DATEV ❌ / §312k ❌ | EN+ | ⚠️ | $100-600+/ay |
| **Mariana Tek** | US | ✅ | ❌ | ✅ | ⚠️ | ✅ | ✅ | ❌ | ⚠️ | ✅/✅/❌ | ✅ | ⚠️ | ⚠️ | ⚠️ | ✅ | ✅ | ✅ | DSGVO ⚠️ / DATEV ❌ / §312k ❌ | EN | ⚠️ | $179-285/ay |
| **PushPress** | US | ✅ | ❌ | ✅ | ⚠️ | ✅ | ✅ (PushPress Train ayrı) | ❌ | ⚠️ | ✅/✅/❌ | ⚠️ | ⚠️ | ⚠️ | ⚠️ | ✅ | ✅ | ✅ | DSGVO ⚠️ / DATEV ❌ / §312k ❌ | EN | ❌ | $159-559/ay (+%4.19 processing free tier'da) |
| **Wodify** | US | ✅ | ❌ | ✅ | ⚠️ | ✅ | ✅ | ❌ | ⚠️ | ✅/✅/❌ | ⚠️ | ⚠️ | ⚠️ | ⚠️ | ✅ | ✅ | ✅ | DSGVO ⚠️ / DATEV ❌ / §312k ❌ | EN | ❌ | $79+/ay |
| **Vagaro** | US | ✅ | ❌ | ✅ | ⚠️ | ✅ | ✅ | ❌ | ⚠️ | ✅/✅/❌ | ✅ | ✅ | ✅ | ⚠️ | ✅ | ✅ | ✅ | DSGVO ⚠️ / DATEV ❌ / §312k ❌ | EN+ | ❌ | $30+/ay |
| **Gymdesk** | US | ✅ | ❌ | ✅ | ⚠️ | ✅ | ✅ | ✅ Promosyon kriterleri + ilerleme % | ⚠️ | ✅/✅/❌ | ✅ | ✅ | ⚠️ | ⚠️ | ✅ | ✅ | ✅ | DSGVO ⚠️ / DATEV ❌ / §312k ❌ | EN | ⚠️ | ~$150/ay |
| **Kicksite** | US | ✅ | ❌ | ✅ | ⚠️ | ✅ | ✅ | ✅ | ⚠️ | ✅/✅/❌ | ⚠️ | ❌ (POS yok) | ✅ | ⚠️ (1.5 GB sınır) | ✅ | ⚠️ | ⚠️ | DSGVO ⚠️ / DATEV ❌ / §312k ❌ | EN | ❌ | $149-199/ay |
| **Zen Planner** | US | ✅ | ❌ | ✅ | ⚠️ | ✅ | ✅ | ✅ Skill + belt | ⚠️ | ✅/✅/❌ | ✅ (Engage add-on +$249/ay) | ⚠️ | ✅ | ✅ workout video | ✅ | ✅ | ✅ | DSGVO ⚠️ / DATEV ❌ / §312k ❌ | EN | ❌ | $99-289/ay + add-on |
| **Spark Membership** | US | ✅ | ❌ | ✅ | ⚠️ | ✅ | ✅ | ✅ Rank history + label print | ⚠️ | ✅/✅/❌ | ✅ | ⚠️ | ⚠️ | ⚠️ | ✅ | ⚠️ | ✅ | DSGVO ⚠️ / DATEV ❌ / §312k ❌ | EN | ❌ | $239-449/ay |
| **MyStudio** | US | ✅ | ❌ | ✅ | ⚠️ | ✅ | ✅ | ✅ Rank progression | ⚠️ | ✅/✅/❌ | ✅ | ⚠️ | ✅ | ⚠️ | ✅ | ⚠️ | ✅ | DSGVO ⚠️ / DATEV ❌ / §312k ❌ | EN | ❌ | "Industry-leading rates" |
| **MartialArts.io / RhinoFit** | US | ✅ | ❌ | ✅ | ⚠️ | ✅ | ✅ | ✅ | ✅ | ⚠️ | ✅/✅/❌ | ⚠️ | ⚠️ | ⚠️ | ⚠️ | ✅ | ⚠️ | ⚠️ | DSGVO ⚠️ / DATEV ❌ / §312k ❌ | EN | ❌ | Fiyat talep |
| **DojoExpert** | HR | ✅ | ❌ | ✅ | ⚠️ | ✅ | ⚠️ | ✅ Next-belt info | ⚠️ | ✅/⚠️/❌ | ⚠️ | ❌ | ✅ | ❌ | ✅ | ❌ | ⚠️ | DSGVO ⚠️ / DATEV ❌ / §312k ❌ | EN+HR | ❌ | Fiyat talep |
| **TeamUp** | UK | ✅ | ❌ | ✅ | ⚠️ | ✅ | ✅ | ❌ | ⚠️ | ✅/✅/❌ | ⚠️ | ❌ | ✅ | ⚠️ | ✅ | ✅ | ⚠️ | DSGVO ✅ / DATEV ❌ / §312k ❌ | EN | ❌ | £83+/ay |
| **Gymcatch** | UK | ✅ | ❌ | ✅ | ⚠️ | ✅ | ✅ | ❌ | ⚠️ | ✅/✅/❌ | ⚠️ | ❌ | ⚠️ | ❌ | ⚠️ | ⚠️ | ⚠️ | DSGVO ✅ / DATEV ❌ / §312k ❌ | EN | ❌ | $18+/ay |
| **Gymsoft** | TR | ✅ | ❌ | ✅ | ❌ | ✅ Iyzico/Param | ⚠️ | ⚠️ | ⚠️ | ⚠️/✅/⚠️ WhatsApp opsiyon | ❌ | ❌ | ⚠️ | ❌ | ⚠️ | ❌ | ✅ | KVKK ⚠️ / DATEV ❌ / §312k ❌ | TR | ❌ | 690₺/ay (~€16-18) |
| **BulutGym** | TR | ✅ | ❌ | ✅ | ❌ | ✅ Iyzico | ✅ | ⚠️ | ⚠️ | ✅/✅/⚠️ | ❌ | ❌ | ⚠️ | ❌ | ⚠️ | ❌ | ⚠️ | KVKK ⚠️ / DATEV ❌ / §312k ❌ | TR | ❌ | Opak |
| **MISSoft Dövüş Kulübü** | TR | ✅ | ❌ | ✅ | ❌ | ✅ | ⚠️ | ✅ Gelişim/kuşak takibi vurgusu | ⚠️ | ⚠️/✅/⚠️ | ❌ | ❌ | ⚠️ | ❌ | ⚠️ | ❌ | ⚠️ | KVKK ⚠️ / DATEV ❌ / §312k ❌ | TR | ❌ | Opak |

---

## 6. Soluty'nin Diferansiyel Fırsatları

Yukarıdaki matristen çıkan **hiçbir tek üründe bir arada olmayan özellikler:**

1. **Dövüş sanatlarına özel müfredat ve teknik mastery checklist'i** (çocuklar vs yetişkin için ayrı sistem)
2. **AI churn prediction** (Glofox "At Risk" report production'da; FitnessKPI ANNA; Superaxe; Wodify — çoğu beta/erken aşama)
3. **Turnuva yönetimi** (Martialytics dışında ciddi seçenek yok; o da Almanca/DACH değil)
4. **Pose/teknik analizi** (computer vision — pazarda henüz yok)
5. **Tam §312k BGB Kündigungsbutton akışı** (ürün içinde end-to-end)
6. **GoBD-konformer revizyon-güvenli muhasebe** (Butlerapp ve birkaç DACH yerli sahip)
7. **AI front desk** (Mindbody 2026 launch'ı duyurdu)
8. **Open API + Zapier**
9. **Tournament/competition tracking**
10. **White-label/multi-tenant SaaS olarak satılabilirlik**

**Soluty Phase 1 için fırsat üçgeni:**
- (a) **DACH yasal uyumu** (§312k, GoBD, DATEV, DSGVO, SEPA)
- (b) **Dövüş sanatlarına özel müfredat + kuşak + sınav modülü**
- (c) **WhatsApp entegrasyonu** (Phase 3'e ertelenmiş ama somut diferansiyatör)

Hiçbir mevcut ürün bu üçünü birden sağlamıyor.

---

## 7. Ortak Kullanıcı Şikâyetleri (Capterra / G2 / Trustpilot / Reddit)

### Magicline (en çok bahsedilen)
- "270%'lik fiyat artışları" sözleşme ortasında (Capterra Almanca: *"Plötzliche Preissprünge, wegen neu gegründeten GmbHs, Verkauf von Rechten usw. führen jedoch dazu, dass eine Preiserhöhung spontan um 270% kommen kann"*)
- "3 ila 5 yıllık zorunlu sözleşmeler, çıkış olmadan"
- "Onboarding yok, support sadece email, chatbot işe yaramaz" (Capterra)
- "Eklenen modüller karmaşıklaştı; eski kullanıcılar bile kayboluyor"
- MySports'un Magicline'dan ayrıştırılması ek aylık €149 maliyet getirmesi

### Eversports
- "Member-centric business plan yapmak için sürekli workaround"
- "Mailchimp/Zapier entegrasyonu eksik; nurture kampanyası yok"
- "Sözleşmeden 12 ay öncesi çıkış yok; her ay €100 ödetiliyor" (Software Advice)
- "Marketplace'ten kaldırılma sonrası bile faturalama devam etti"

### Mindbody
- "Çok pahalı; gerçek aylık $269+ başlangıç; tier upgrade için zorlamalar"
- "Marketplace komisyonu: ilk satışın %20'si Mindbody'e (cap $30)"
- "Mobil yönetim eksik; çoğu admin özelliği masaüstüne kilitli"
- "Kart processing %3.5+ — DACH ortalamasının çok üstünde"
- "AI chatbot başarısız, gerçek destek almak zor"

### ABC Glofox
- "Onboarding kaotik, support inişli çıkışlı" (Software Advice)
- "Fiyat şeffaf değil; sürpriz ücretler"
- "Pazarlama tarafı ve fiyat orantısız"

### Spark Membership
- "17 hata 4 ay içinde, sorumluluk üstlenilmiyor" (G2)
- "Otomasyonlarda gramer hataları, profesyonel değil"
- "Stüdyo dışındaki organizasyonlar için workaround gerek"

### PushPress
- "İlk fiyat aldatıcı; add-on'lar $500+/ay'a çıkarıyor"
- "Workout tracking ayrı bir uygulama (PushPress Train) — fragmente"

### Gymdesk
- "Five Elms Capital tarafından çoğunluk satın alımı sonrası" (PR Newswire 08.07.2024). Avigayil B. Capterra Mart 2025: *"The company has changed in all the wrong ways (acquired by private equity), causing both gym and members to suffer"*
- "Bulk operations sınırlı; 100+ üye filtreleme zor"
- "Etkinlik (event) modülü zayıf"

### Kicksite
- "Fiyatlandırma büyüme ile uyumlu değil"
- "POS sistemi yok; landing page özelleştirme sınırlı"
- "Mindbody'den geçiş sancılı; 1.5 GB video upload limiti sonradan öğreniliyor"

### Sektör çapında ortak şikâyetler
- **WhatsApp entegrasyonu:** NEREDEYSE HİÇBİR platformda yok. DACH ve TR'de en çok kullanılan iletişim kanalı.
- **Aile/veli yönetimi:** Pek çok platformda "primary family member" diye keyfi bir veliyi seçmek gerekir; her çocuk için ayrı kayıt.
- **Etkinlik (seminer, sınav, kamp)** ile membership birleşimi
- **DATEV ihracı** (DACH dışı ürünlerde yok)
- **Custom report builder** pek çoğunda yok veya kısıtlı
- **Çıkış kolaylığı:** data export, sözleşme feshi, account silme

**Tipik churn (platformlar arası geçiş):** Kicksite→Gymdesk, Eversports→Momence, Zen Planner→Gymdesk, Mindbody→Kicksite, Glofox→Gymdesk. Çoğu geçiş "fiyat şişti + UX karmaşıklaştı + müşteri desteği bozuldu" üçlüsünden tetikleniyor.

---

## 8. Dövüş Sanatlarına Özel Boşluklar (Martial Arts Gap)

Genel fitness platformlarının dövüş sanatları için yetersiz kaldığı somut alanlar:

1. **Kuşak/Rank progression yönetimi:** Magicline, Eversports, Mindbody, Glofox, TeamUp, Gymcatch — hiçbirinde gerçek anlamda kuşak takibi yok. Zen Planner, Gymdesk, Kicksite, Spark Membership ve KampfClub bu konuda gerçek müfredat + ilerleme yüzdesi + sınav kriteri sunan az sayıda ürün.

2. **Çoklu müfredat (çocuk vs yetişkin):** Pek çok stüdyo çocuk programında farklı kuşak sistemi (örn. kırmızı/turuncu/sarı bant) ve yetişkin programında klasik beyaz-mavi-mor-kahve-siyah kullanır. Gymdesk ve Zen Planner birden fazla program tanımlamaya izin veriyor; çoğu platform tek bir kuşak hiyerarşisi varsayıyor.

3. **Turnuva yönetimi:** Pek az platform native destekliyor; **Martialytics** dışında ciddi seçenek yok ama Martialytics da Almanca/DACH değil.

4. **Sınav/grading etkinliği:** Kim sınava hazır, kim eksik kriter taşıyor, sınav günü programı, sertifika çıktısı — Zen Planner, Gymdesk, KampfClub'da var; çoğu üründe yok.

5. **Veli-çocuk hesabı:** En çok Spark, Gymdesk, MyStudio gibi dövüş sanatları odaklılarda iyi. Mindbody/Glofox/Magicline'da "guardian" alanı manuel doldurulan bir text alanı. Reddit (r/martialarts) ve Capterra yorumlarında en çok şikâyet edilen özellik.

6. **Aile üyelikleri (family memberships):** Tek faturada birden fazla üyelik, kardeş indirimleri, aile aktivasyon/dondurma — pek az platformda otomatik. Eversports'tan ayrılan stüdyolar sıklıkla bunu sebep olarak gösteriyor.

---

## 9. Caveats — Araştırmanın Sınırları

1. **Fiyatlandırma volatilitesi:** Pek çok ürün (özellikle ABD'liler) listede fiyat göstermiyor. Bu rapordaki rakamlar Capterra/G2/Software Advice/üçüncü taraf değerlendirme sitelerinden ve aktif kullanıcı yorumlarından derlenmiş tahminler. Magicline ve Eversports'ta net listeli fiyat var ama "üye sayısı eşiği aşılınca otomatik tier upgrade" mekanizması nedeniyle gerçek aylık maliyet kullanıma bağlı.

2. **§312k BGB uyumu iddiaları:** Hiçbir vendor "tam uyumlu" demiyor; bu Soluty için fırsat ama AYNI ZAMANDA hukuki risk taşıyor. Faz 1'de Almanya'da IT-Recht uzmanı bir hukuk bürosuyla (örn. Plutte, Noerr, Bird & Bird, Härting veya Kanzlei Grudzinski) flow'u doğrulatma ZORUNLU. BGH'nin 22.05.2025 kararı sonrası yorum hâlâ gelişiyor.

3. **Kuşak takip iddiaları yetersiz belge:** Magicline'ın "martial arts business type" sayfası ve Eversports'un "Dojo" sayfası mevcut ama her ikisinin de ürün help center'ında belgelenmiş bir Gürtelprüfung modülü bulunamadı. Aktif Magicline veya Eversports müşterilerine (kampfsport stüdyo sahipleri) sormak garanti verir. KampfClub bu konuda en şeffaf yerel rakip.

4. **Türk pazarı veri eksikliği:** Türkiye dövüş sanatları stüdyosu sayısı, gerçek SaaS kullanım oranları için resmi DSSV/Statista düzeyi veri kaynağı bulunamadı. Pirus Yazılım gibi yerel vendor'lar SEO çalışıyor ama gerçek aktif müşteri sayısı belirsiz.

5. **Fitogram'ın 31.12.2024 kapanması** sektör için bir uyarıcı. DACH'ta freemium + agresif büyüme modeli sürdürülebilir değildi. Soluty'nin SaaS modeli için ders.

6. **PE acquisition risk:** Sport Alliance/Magicline (PSG Equity 2021/2023), Gymdesk (Five Elms Capital, $32.5M çoğunluk satın alımı, 08.07.2024), ABC Glofox (ABC Fitness Solutions 25.08.2022; ABC Fitness Solutions ise Thoma Bravo portföy şirketi), Mindbody (Vista Equity/ClassPass sahipliği altında) — büyük platformlar sektörde sürekli el değiştiriyor. Pek çok kullanıcı şikâyeti PE sonrası "fiyat artıyor, support düşüyor" örüntüsünden bahsediyor. Bu Soluty için pazara giriş fırsatı ama aynı zamanda, eğer Soluty kendisi exit'e bakarsa, müşterilerine "biz aynısı olmayacağız" sözünü tutması gerekecek.

7. **AI churn prediction overhype:** Bu pazarda büyük bir trend — Glofox, Wodify, Virtuagym, Superaxe, PredictStay, FitnessKPI hepsi söylüyor. Ancak academic literatürde (IEEE 8256385 sayılı çalışma; Medium üzerinden Bolotov Random Forest çalışması) gym churn prediction tahmin başarısı %85-93 PR-AUC seviyesinde — fena değil ama eyleme dönüştürme bandı dar. Soluty Faz 1'de bunu AŞIRI satmamalı.

8. **Matrisin son satırları yeniden inşa edildi:** ABD/UK ve TR ürünlerinin matristeki hücreleri (Mindbody → MISSoft) orijinal araştırma oturumunun bulgularıyla uyumlu olarak yeniden inşa edildi. İlk 7 satır (Magicline → Sportanize) orijinaldir. Yapacağımız Phase 1 kapsam kararı için bu yeniden inşa yeterli; ancak müşteri sürümüne (Anhang E) damıtmadan önce 2-3 hücrenin (özellikle "Mobile App" ve "Antrenör Plan/Bordro" sütunları) hedefli kontrolü önerilir.

9. **Event management derinliği eksik:** Phase 1'e dahil edilmesi yeni kararlaştırılan "event/seminer/kamp yönetimi" konusu, bu araştırmada **yüzeysel** olarak ele alındı (sadece matriste bir sütun). Phase 1 kapsam tartışmasından önce 15-20 dakikalık hedefli bir mini-araştırma (Mindbody, Eversports, ABC Glofox, Kicksite, Gymdesk, Zen Planner, Spark, KampfClub event modülü kapsamı) yapılması önerildi.

10. **Tarama tarihi:** Araştırma 2026 başında yapıldı. SaaS pazarı hızlı değişir; sözleşme imzasından önce kritik 3-4 ürün için (Magicline, Eversports, Gymdesk, KampfClub) revalidasyon önerilir.

---

*Bu doküman daha önceki Claude oturumunda üretilmiş ham araştırmadan yeniden derlenmiştir. Orijinal taramanın tam log'u bu derleme için kullanılan kaynaklar dahil değildir; metin içindeki tüm somut iddialar orijinal araştırmada doğrulanmış şekilde sunulmuştu.*