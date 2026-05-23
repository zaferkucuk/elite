# Elite Kickboxing Berlin — Mobile App Competitive Deep Dive (Faz 2 Kapsam Doğrulama)

**Stand der Recherche:** 22 Mayıs 2026
**Müşteri:** Elite Kickboxing Berlin GmbH — Schöneberg/Wittenbergplatz, ~250 üye
**Konu:** Faz 2 mobile app (markalı native iOS+Android) için competitive deep dive
**Coğrafya:** DACH + ABD (UK ve TR hariç)
**Ürün sayısı:** 8 (Magicline/MySports, Eversports, Mindbody [üye+iş], ABC Glofox, Gymdesk, Zen Planner, Spark Membership, Kicksite)
**Önceki belge:** `docs/R&D/research/competitive-software-raw.md` — bu doküman onun mobile derinleşmesidir

> **TL;DR — Üç çıkarım:**
> 1. Soluty'nin mevcut Faz 2 yapısı (7 grup + 3 ek) competitive landscape tarafından **doğrulanmıştır**. **8 ekleme** ve **1 çıkarma** önerilir.
> 2. **Bizim net diferansiyatörümüz**: Türkçe dil + DSGVO Art. 20 üye-app-içi tek-tıkla veri dışa aktarma + §312k BGB Kündigungsbutton + martial-arts native belt tracking dörtlüsü → tek bir native app içinde bir araya getiren rakip yok.
> 3. **En tehlikeli rakip kategorisi**: Magicline (DACH yasal uyum + DE/EN native) ve Zen Planner (martial arts native + DE listing + family account). Gymdesk konsept olarak çok yakın ama English-only ve düşük iOS rating (3.5/38).

---

## BÖLÜM 1 — Ürün Profilleri

### 1. Magicline — MySports Member App

**Ülke / Sahiplik:** Almanya (Hamburg). Sport Alliance GmbH bünyesinde. PE sahipliği **PSG Equity** — PSG'nin Ağustos 2021 basın bülteni: *"Hamburg-Based Sport Alliance Secures €60M Growth Investment from PSG"* (toplam yatırım taahhüdü $100M'a ulaştı). (Önceki competitive-software belgesindeki "Hg Capital" notu yanlıştır; düzeltilmiştir.)

**Mobil app stratejisi:** Çift katmanlı: (a) jenerik "MySports" app (MySports markalı), (b) ek ücretli **Branded App** (stüdyo logosu/rengi, ayrı App Store/Play Store yayını). Magicline yeni müşteriler için Branded App'i öne çıkarıyor; MySports App'e yeni stüdyo bağlantıları kademeli kapatılıyor. Vendor doc (support.magicline.com "Member transition from MySports App to your Branded App"): *"Once your Branded App version is released, no new studio connections will be possible with the MySports App… New members can only register and connect via the Branded App. Existing members will still have access to the MySports App but must re-register to use the Branded App."*

**App Store mevcudiyeti:**
- **iOS** — "MySports: Connect with the gym" (App ID 1206433997, MySports GmbH); en güncel v3.71.0, **23 Temmuz 2025**; iOS App Store sayfasında doğrudan rating görünmedi (üçüncü-taraf AppBrain takipçisi 4.69/5, 58 oy — düşük güven, oy hacmi çok küçük)
- **Android** — "MySports" (io.noexcuse.android, MySports GmbH Hamburg) — **4.7 ★, 15.5K review, 1M+ indirme**, son güncelleme 18 Mayıs 2026 ("Improvements and bugfixes")

**Native mi PWA mi:** Native iOS + Android ayrı binary'ler. Branded App de native (vendor doc: "Add `apps@gymdesk.com`... actually we mean `apps@magicline.com` as a user" tipi Apple Developer + Google Play Console entegrasyonu müşteri hesabına).

#### 1. Mobil uygulama temeli
- Native iOS + Android: ✅
- Çok dilli: ✅ **Almanca + İngilizce native** (developer Hamburg; help-center DE/EN; review'lar her iki dilde)
- Push bildirim: ✅ (mysports.com pazarlama: *"Stay in direct contact with your members thanks to MySports messages"*)
- App store rating: iOS — App Store sayfasında doğrudan görünmüyor (üçüncü-taraf AppBrain 4.69/5, 58 oy — düşük güven); Android 4.7 (15.5K review). Magicline marketing: *"Highest-rated app in its category with around 5 stars in all app stores"* (vendor iddia, bağımsız doğrulama Android için ✅, iOS için belirsiz).

#### 2. Üye self-service
- Profil yönetimi: ✅ — *"Members can manage their data independently via the app"* (magicline.com/en/features/mysports)
- Üyelik durumu: ✅
- Ödeme geçmişi + fatura indirme: ⚠️ — App içinde "outstanding Finion debts" görme/ödeme dokümante (Magicline help-center "How to view and pay outstanding Finion debts in the Member App"); fatura PDF indirme app içinde belgesi yok. **Varsayım:** web tarafına yönlendiriyor.
- Veri dışa aktarma (DSGVO Art. 20): ⚠️ Admin tarafı export var (DSGVO Compliance support sayfası: *"Mit der Magicline kannst du dies deinen anfragenden Mitgliedern auf Knopfdruck bereitstellen"*); üyenin app'ten **kendi başına** çıktı alma akışı belgesiz. **Varsayım:** yok / e-posta ile talep.

#### 3. Üye ders ve etkinlik akışı
- Ders programı görüntüleme: ✅
- Rezervasyon + iptal: ✅ — *"Bookings for classes or coaching sessions can be easily managed via the app"*
- Bekleme listesi: ✅ — *"additional sign-ups through a waiting list. This way, your members automatically move up as spots become available"*
- Etkinlik (workshop, kamp) kaydı: ⚠️ Coaching sessions evet; martial-arts "sınav" tipi etkinlik fitness odaklı platformda native değil.

#### 4. Üye takvim görünümü
- Kendi rezervasyonları takvim: ✅
- Filtreli görünüm: ⚠️ (web tarafında "filter by studio, teacher, activity" var; mobile parite varsayım)
- Hatırlatma: ✅ — *"MySports Member Platform sends out automated confirmations and reminders to increase attendance rate"*

#### 5. Üye sözleşme ve yasal arayüz — **MySports'un EN GÜÇLÜ tarafı**
- Kündigungsbutton mobil: ✅ — Magicline help-center "Kündigungsschaltfläche" makalesi açıkça: *"Unter dem Menüpunkt „Verträge" findet sich der Kündigungsbutton unterhalb der angezeigten Verträge."* Yasal zorunluluk §312k BGB, **gesetze-im-internet.de** doğrulamasıyla 1 Temmuz 2022'de yürürlüğe girdi (BGBl. I S. 3433). Magicline blog: *"Im MySports Self-Service Bereich haben deine Mitglieder schon jetzt den bald verpflichtenden Kündigungsbutton"* (2022).
- Sözleşme yenileme: ✅ — *"upgrade their contract with additional modules"*
- Sözleşme PDF arşivi: ⚠️ **Varsayım:** var; doğrudan kanıt bulunamadı.

#### 6. Veli görünümü
- Veli ayrı view / çoklu profil: ❌
- Çocuğun kuşak ilerlemesi: ❌
- Çocuğun devamı: ❌
- Aile faturası: ⚠️ (kontrat-bazlı; "family account" Magicline'da first-class değil)

#### 7. Üye ilerlemesi
- Kuşak/rank: ❌ (fitness odaklı; training plans var, martial arts rank yok)
- Antrenman geçmişi: ✅ — *"training plans, tracking and more"*; egzersiz kütüphanesi var (vendor blog "Build a Loyal Community of Members": *"The database, equipped with over 500 exercises and HD videos, can be customized or expanded anytime"*).
- İlerleme yüzdesi: ⚠️ (training weights/reps takip ediliyor; % complete belgesiz)

#### 8. Antrenör tarafı (Magicline App / Trainer App)
- Ayrı staff app: ✅ "Magicline App" — Google Play + App Store; tenant URL ile login (help-center "Where do I find the Magicline App?")
- Kendi takvim: ✅
- Yoklama: ✅ — *"the instructor can conveniently access the list of registered participants anytime via the Magicline App"*
- Üye performans takibi: ⚠️ (assessment forms var; martial-arts kriter checklist değil)
- Mesajlaşma: ✅ ("MySports messages")
- Ders planı: ✅ — HD video kütüphanesinden plan oluşturma
- Bordro/saat: ⚠️ (Magicline'da Integrated Time Tracking var, vendor pazarlama; mobile-içi staff clock-in belgesiz)

#### 9-10. Destek + Bildirim tercihi
- Canlı chat: ⚠️ (support@ email + web chat; üye-app içi inline chat ❌)
- Yardım merkezi/FAQ: ⚠️ (zengin web; app içine gömülü değil)
- Bildirim granular ayar: ⚠️ Varsayım: push on/off; granular yok.

#### Kullanıcı şikâyetleri
MySports app için son 12 ayda public review hacmi düşük (AppBrain 58 oy). Magicline genelde **B2B Capterra'da** yoğun: *"Preissprünge innerhalb von 2 Jahren auf das 3-fache. Preiserhöhungen um €129 einen Monat nach Vertragsunterzeichnung. Kein Sonderkündigungsrecht."* (Capterra DE review). En sık üye-tarafı friction: **MySports App → Branded App geçişinde re-register zorunluluğu**.

#### Soluty için ders
- **Kopyalanması gereken:** (1) **Kündigungsbutton mobil-içi placement** ("Verträge" menüsü altında, §312k BGB uyumlu) — pazardaki tek tam destek; (2) "Branded App" yaklaşımı — bizim için zaten plan; (3) Almanca + İngilizce paralel help-center; (4) Egzersiz/teknik kütüphanesi konsepti (martial arts'a uyarlanırsa "tekniğe video" eşleştirmesi).
- **Kopyalanmaması gereken:** İki paralel app tutma (MySports + Branded) — kullanıcıya re-register friction yaratıyor. Soluty tek app yayınlamalı.

#### Faz 2 ile boşluk
MySports'ta olup bizim Faz 2'de zayıf olan: (a) Loyalty/ödül programı (training tamamlamaya göre rozetler); (b) Referral programı app içinden. Her ikisi P2 — Elite 250 üye için ROI henüz net değil.

---

### 2. Eversports — Eversports Book & Find Sports

**Ülke / Sahiplik:** Avusturya (Viyana — Eversport GmbH). Bağımsız scale-up.

**Mobil app stratejisi:** Multi-tenant marketplace app (üye birden çok stüdyoya bağlı hesapla). **Aralık 2024'te "Branded App" lansmanı duyuruldu**, Q1 2025'te canlı (Eversports help-center "Your Branded App is Here!" — Dec 2, 2024). Branded App henüz olgunlaşmamış: *"first version focuses on booking and pass management"*. **Future feature** olarak listelenmiş: *"Family accounts: enable multiple users under one account."*

**App Store mevcudiyeti:**
- **iOS** — ID 946460861, v2.56.7 (**26 Mart 2026**); rating **4.1 (sadece 11 oy)** — örneklem çok küçük
- **Android** — at.eversport, **2.7 ★, 701 review**, 30 Mart 2026 → **Android tarafında ciddi memnuniyetsizlik**

**Native mi PWA mi:** Native iOS + Android (iOS 15.0+).

#### 1. Mobil uygulama temeli
- Native iOS + Android: ✅
- Çok dilli: ✅ **6 dil — İngilizce, Almanca, Hollandaca, Fransızca, İtalyanca, İspanyolca** (App Store listing)
- Push bildirim: ✅
- App store rating: iOS 4.1 (11), Android 2.7 (701)

#### 2-3. Self-service + Booking
- Profil, üyelik durumu, pass/memberships görme: ✅ — *"My passes and memberships: This shows the remaining credits of your products and expiration dates"*
- Ödeme geçmişi / fatura PDF: ⚠️
- Veri dışa aktarma DSGVO Art. 20: ❌
- Ders rezervasyon, iptal, **late cancellation ("Free your spot")**: ✅
- Bekleme listesi push: ✅

#### 4. Takvim + Filtreler
- Filtreli görünüm: ✅ ("filter by studio, teacher, activity or sport")
- Calendar export: ⚠️ — **iOS'ta calendar bug en sık şikayet konusu**

#### 5. Sözleşme / Kündigungsbutton
- Web Self-Service'te iptal var; mobile-içi §312k BGB-spesifik button doğrudan görmedik. **Varsayım:** mobile-içi web'e link veriyor olabilir.

#### 6-7. Veli + İlerleme
- Family account: ❌ (roadmap'te "future")
- Kuşak/rank: ❌ (yoga/CrossFit/dance odaklı)

#### 8. Antrenör tarafı — **KRİTİK ZAYIFLIK**
- **Native trainer app YOK** — Eversports Manager web-based; trainer mobile browser ile `app.eversportsmanager.com`'a giriyor.
- Yoklama (web): *"tick the checkbox next to each attendee's name"*

#### 9-10. Destek + Bildirim
- Help center ✅, app-içi chat ❌
- Üye bildirim toggle: ✅ — *"App Settings: Here you turn on and off email notifications, automatic calendar exports or can select your favourite map service"*

#### Kullanıcı şikâyetleri (verbatim, son 12 ay)
1. **iOS calendar bug** (en sık): *"The app works but it has a major flaw: When I want to add my booking to my calendar on my iPhone, I get the message that I have not given access to my calendar in settings. But I have… This makes it way more complicated… 3 stars off for this."* (US Apple Store)
2. **Booking flow UX gerilemesi** (Google Play DE, son sürüm): *"Dear developers team, with the newer version I always have to choose and select the membership and payment method. I go to the same gym, with the same payment method every time. It requires 10 clicks for me to book a single session... repeating this for 5 times a week. This was even better in old versions of the app. The UX needs some refinement and testing."*
3. **Sözleşmeden çıkış zorluğu (B2B Capterra, yoga studio owner)**: *"Eversports wouldnt let us leave within the first 12 months. So we are still being charged around 100€/month. Every email that we send regarding this seems to get sucked into the void."*

#### Soluty için ders
- **Kopyalanması gereken:** (1) **6-dil i18n** — DACH ölçeği için baseline; (2) Bekleme listesi push akışı; (3) "Late cancellation / free your spot" sosyal mekanizma; (4) App Settings'te bildirim toggle ayrı sekmesi.
- **Kopyalanmaması gereken:** (a) Multi-tenant marketplace (Elite tek lokasyon); (b) 10-klik rezervasyon akışı; (c) **native trainer app olmaması** — Soluty'nin antrenör native app stratejisi doğru; (d) iOS Calendar permission bug tipi temel iOS API hataları.

---

### 3. Mindbody — Mindbody (Üye) + Mindbody Business (Staff)

**Ülke / Sahiplik:** ABD (San Luis Obispo, CA). PE: **Vista Equity Partners** — Mindbody'nin Aralık 2018 basın bülteni: *"MINDBODY Enters into Definitive Agreement to be Acquired by Vista Equity Partners for $1.9 Billion — Vista Equity Partners to acquire all outstanding Mindbody common stock for $36.50 per share, representing a 68% premium to the unaffected closing price as of December 21, 2018."*

**Mobil app stratejisi:** Üç katmanlı: (a) **Mindbody: Fitness & Wellness** — global consumer marketplace; (b) **Mindbody Business** — staff/admin app; (c) opsiyonel **Branded App** add-on (Accelerate plan ve üzeri; Mindbody design team yapar, ayrı yüklenir).

**App Store mevcudiyeti:**
- **iOS Üye** — ID 689501356, **4.9 ★ (259K oy)**, v8.11.0 (May 22 2026) — pazarın **açık ara en yüksek rating'i ve en yüksek hacmi**
- **Android Üye** — com.mindbodyonline.connect, **4.8 ★ (57K review, 5M+ indirme)**, Apr 22 2026
- **iOS Business** — ID 599125654, **4.6 (23K oy)**, v7.73.0 May 11 2026
- **Android Business** — com.mindbodyonline.express, 4.5 ★ (4.5K review, 500K+ indirme)

#### 1. Mobil uygulama temeli
- Native iOS + Android: ✅
- Çok dilli: Üye app **EN + ES** sadece; Business app **EN, FR, DE, IT, PT, ES (EN + 5)**. Üye-tarafı DACH için Mindbody resmi olarak **DE etkisiz**.
- Push: ✅ (Branded App: *"deals, event announcements, automatic 'we miss you' messages, class cancellation notices"*)

#### 2-4. Üye self-service + booking + takvim
- Tam suite ✅; SMS hatırlatma ✅
- DSGVO Art. 20: ❌

#### 5. **Kündigungsbutton mobil: ❌** (DACH compliance Mindbody'de yok; "absurd that customers need to be in a contract just to store their credit card information" — Capterra verbatim B2B şikayet)

#### 6. Family / Veli — marketing/içerik var, app native gerçek implementasyon zayıf
Mindbody blog (mindbodyonline.com/business/education/blog/attendance-student-progress-tracking-martial-arts-schools): *"linked family profiles that consolidate booking, attendance tracking, belt progression, and payments under a single parent account"* — **martial-arts segment marketing içeriği**; üye app screenshot/feature doc'larında zayıf. **Varsayım:** kısmi.

#### 7. Kuşak/rank: ❌ jenerik wellness platform; martial-arts UI native değil.

#### 8. Mindbody Business
- Staff app: ✅
- Yoklama: ✅
- **Substitution Management**: ✅ — *"The Substitution Management feature allows staff to request substitutes via text message automation. This feature automates text notifications to streamline instructor substitutions"*
- **Payroll**: ✅ — *"Payroll tools such as ADP, Exact Payroll, and Paychex, which let you send payroll data directly from Mindbody"*
- Performance tracking: ⚠️ (Spivi, Trainerize entegrasyonları üzerinden, native değil)

#### 9-10. Destek/Bildirim — *"24/7 support"* pazarlama, gerçek deneyim Capterra'da: *"support tickets take 2 weeks"*

#### Kullanıcı şikâyetleri (verbatim)
1. **Booking failure (en sık)**: *"I am a Glow Sauna member and am ready to end my membership due to the fact that I haven't been able to book a reservation through MINDBODY for months. The current issue is that the cabin calendar dates never populate, much less show what times are available to select, ending with the message 'oops, something went wrong.'"* (US App Store, 2025)
2. **Geçmiş kayıpları**: *"Recently, all the history of the past classes I've purchased deleted. I'm not sure why."* (App Store)
3. **B2B mobil sınırlılık**: *"Many day-to-day management tools aren't fully accessible on mobile devices, so they're not ideal for working on the go."* (Capterra, 14 Kasım 2025)
4. **Gece bug'ı**: *"For some reason, the schedule on the mobile app doesn't display properly when I'm accessing later at night (11pm/12am)."* (Capterra, 20 Kasım 2025)
5. **Branded App launch**: *"I Love the branded app they creatd for us i was not happy to be charged for it before it was up and running paid two month fees."* (Capterra)

#### Soluty için ders
- **Kopyalanması:** (1) Staff app payroll integration paradigması (Faz 4 Buchhaltung'a bağlanır); (2) Substitution Management — antrenör yedek otomatik bulma akışı (P2 — Elite az antrenör); (3) "We miss you" otomatik notification (X gün gelmediyse push).
- **Kopyalanmaması:** (a) Marketplace discovery (Elite tek lokasyon için anti-pattern); (b) §312k BGB compliance eksikliği; (c) Branded App üye fonksiyonlarını upsell olarak gizleme; (d) ABD-merkezli mimari DACH için yetersiz.

---

### 4. ABC Glofox — Glofox App (Member Branded) + Glofox Pro (Admin)

**Ülke / Sahiplik:** İrlanda (Dublin). PRNewswire (25 Ağustos 2022): *"ABC Fitness Solutions...today announces that one of its affiliates has completed its acquisition of Glofox in accordance with the definitive agreement entered into by both parties on July 29, 2022."* ABC Fitness Solutions **Thoma Bravo portföy şirketi**. "ABC Glofox" rebrand'i 2024.

**Mobil app stratejisi:** Branded member app (her stüdyo kendi logosu/rengi, ayrı App Store yayını — Plus/Gold plan'a dahil) + Glofox Pro admin app. Generic "Glofox" App Store'da bulunuyor.

**App Store mevcudiyeti:**
- **iOS** — "Glofox" (ID 916224471, ABC Fitness Solutions LLC), **v9.0.5 (30 Ocak 2026)**, rating **4.5 (190 oy, post-reset)** — Glofox v8.3.x → v9.0.x rebrand sırasında **rating reset yaptı**; gerçek pre-reset memnuniyetsizlik daha yüksekti
- **Android** — ie.zappy.fennec.oneapp_glofox, **4.7 ★ (2.54K review, 500K+ indirme)**, 5 Mayıs 2026

#### 1. Mobil uygulama temeli
- Native: ✅
- **Çok dilli: ❌ EN only** (DACH pazarına satıyor ama UI sadece İngilizce — self-defeating)

#### 2-5. Self-service + booking
- Profil/üyelik: ✅
- **"Two-click booking system"** vendor iddiası — gerçek en güçlü taraf
- Waitlist: ⚠️ **Capterra Owner şikayeti**: *"Waitlist feature hasn't been working in over a month."*
- DSGVO Art. 20: ❌
- Kündigungsbutton: ❌

#### 6. Veli — Yeni v9.0.5 ile sınırlı family
Yeni release notes (UK App Store): *"If your Studio allows it, you can also set up an account for your children, buy them a membership and book sessions for them."* — Kısıtlı: full family account değil.

#### 7. Kuşak: ❌

#### 8. Glofox Pro (Antrenör)
- Capterra B2B verbatim: *"The trainers can hardly do anything in their app which is super annoying."*
- *"Courses don't show in the app for teachers. You cannot enter suspensions for limited memberships… 250 passes had to be re-entered manually."*

#### 9-10. App içi support: ❌ canlı chat; ✅ help center

#### Kullanıcı şikâyetleri (verbatim, son 12 ay)
1. **App crash spam (EN SIK)**: *"The app itself is set up well. But it constantly crashes! Constantly kicks people out! Changes event times on its own! Sometimes people can book sometimes they can't!"* (Trustpilot, 2025)
2. **Calendar permission**: *"My Add to Calendar button has not been working for a couple of months. It should auto update as all of my other apps do, but it is not. I have uninstalled and reinstalled the app several times with no luck."* (US App Store)
3. **Bildirim spam**: *"Please allow members to configure notification method and frequency (i.e. an option for 'none'; I don't need my inbox spammed for every single booking)."* (Google Play)
4. **Login session loss + reinstall döngüsü**: *"either it won't open at all, or it will open but won't let you see your booked classes… you have to log out and log in again daily, but sometimes you can't even log out, so you have to uninstall and reinstall. Absolutely ridiculous."* (Google Play)

#### Soluty için ders
- **Kopyalanması:** (1) **"Two-click booking" UX hedefi** — rezervasyon 2 tap'tan fazla olmasın; (2) Trainer bio + foto ders detayında (v8.1.5 paterni); (3) News/announcements ayrı sekme (v8.1.5'te eklendi).
- **Kopyalanmaması:** (a) **Native app stability felaketi** — Glofox'un kronik problemi; Soluty diferansiyatör olabilir; (b) EN-only UI; (c) Trainer app fonksiyon eksikliği; (d) Bildirim spam (granular ayar zorunlu).

---

### 5. Gymdesk — Members App + Business Owner App

**Ülke / Sahiplik:** ABD (Martial Arts on Rails LLC). **Kurucu Eran Galperin BJJ siyah kuşak + yazılımcı** — Gymdesk founder story (gymdesk.com/originals/gymdesk-founder-story-eran-galperin): *"Eran Galperin, a Brazilian Jiu-Jitsu black belt and software developer, built Gymdesk from the ground up—working nights and weekends while holding a full-time CTO position."* Bağımsız (PE değil).

**Mobil app stratejisi:** Jenerik "Gymdesk Members App" + opsiyonel branded white-label app **$100/ay ek ücret** — docs.gymdesk.com/help/branded-member-app: *"The monthly cost is $100, which will not be charged until your app is live."*. Owner/staff için ayrı Business Owner App.

**App Store mevcudiyeti:**
- **iOS Üye** — ID 6443918014, v1.4.11 (~19 Mayıs 2026), **rating 3.5 (sadece 38 oy)** — örneklem küçük + düşük rating
- **Android** — com.gymdesk.mobile; details page 404 (rating görünmedi)

#### 1. Mobil uygulama temeli
- Native: ✅ (Eylül 2023 blog: *"It's been a long time coming, but we're happy to announce our native mobile app is now available on both the iPhone and Android app stores"*)
- **Çok dilli: ❌ EN + Japonca destekli; DE yok** — DACH için kritik açık
- Push: ✅ — *"Push notifications are free, instant and always delivered as there's no middle-man like carriers and spam detection"*

#### 2-4. Self-service + booking
- Tam suite ✅
- DSGVO Art. 20: ❌

#### 5. Kündigungsbutton: ❌ (US-merkezli)

#### 6. **Veli / Family — Gymdesk'in kavramsal güçlü tarafı, app içi BUG'lı**
- Konsept: *"Primary members on a family account can switch between members within their account to update information"*
- **Gerçek:** Apple Store verbatim şikayet: *"I was excited to see there was a gymdesk app but disappointed that I can't switch between my family members on our family membership."*

#### 7. **Kuşak/rank — Gymdesk'in EN GÜÇLÜ tarafı** (martial-arts native)
- *"attendance counts and instructor notes decide when a student can test"*
- *"skills tracking, technique library, bulk promotions, evaluation forms, student-visible progress"*
- *"Members can review their skills and monitor their progress towards their next rank or level"*

#### 8. Business Owner App
- Yoklama ✅, üye performance tracking (technique mastery checklist + evaluation forms) ✅ — martial-arts native
- Payroll/bordro: ❌ (Gymdesk'te payroll özelliği yok, yalnızca billing)

#### 9-10. App içi destek
- **Canlı chat: ✅** (JoinSecret review: *"particularly through the Live Chat feature"*) — pazarda nadir, doğru paten
- Bildirim granular: ⚠️

#### Kullanıcı şikâyetleri (verbatim, son 12 ay)
1. **Family switch bug**: *"I was excited to see there was a gymdesk app but disappointed that I can't switch between my family members on our family membership."* (Apple Store)
2. **Face ID yok**: *"Our membership doesn't use the app because there is no Face ID and they always forget their password."* (Apple Store)
3. **Owner deneyimi (pozitif)**: *"Definitely a 5 as a school owner. It does it all from payment processing, attendance tracking, easy email and push notification for communicating with members."* (Apple Store)
4. **Community board talebi (JoinSecret)**: *"I think it would be beneficial if there was a feature within the software that allowed interaction with members, such as notifications when an admin user posts something or a community board for updates."*

#### Soluty için ders
- **Kopyalanması:** (1) **Martial-arts-native belt/rank tracking** — Elite için doğrudan kopyalanması gereken paradigma; (2) Family account tek login + üye-arası switch (ama Gymdesk'in bug'larından kaçınılarak); (3) Technique library + skills checklist akışı; (4) Bulk promotions (sınavdan sonra çoklu öğrenci tek tıkla terfi); (5) Live Chat — pazarda eksik, Soluty diferansiyatörü.
- **Kopyalanmaması:** (a) EN-only — Soluty DE+EN+TR vermeli; (b) Face ID yok → biometric login eklemeli; (c) Family switch bug; (d) Payroll özelliği yok (Faz 4 ile bağlanacak).

---

### 6. Zen Planner — Member App + Yeni Staff App (Daxko)

**Ülke / Sahiplik:** ABD (Birmingham, AL). **Daxko LLC altında** — Zen Planner Daxko tarafından Mart 2017'de satın alındı. GI Partners Eylül 2016'da Daxko'yu desteklemeye başladı; **Ekim 2021 recapitalization** Genstar Capital + GI Partners birlikte (Daxko PRNewswire, 19 Ekim 2021): *"Daxko...announced today a recapitalization of the company by Genstar Capital and existing investor GI Partners."* Martial-arts kurucu DNA (kurucu martial arts okul sahibi — vendor marketing).

**Mobil app stratejisi:** Üç app şu anda: (a) eski Member App, (b) eski Staff App (deprecate ediliyor), (c) **yeni Daxko Zen Planner Staff App (Ekim 2025 lansman, Phase 1)**. Vendor roadmap (zenplanner.com/mobile-app/): *"Staff features available today, member functionality will be added in 2026… The complete experience, uniting staff and members in one app, launches in 2026."* Branded member app opsiyonel.

**App Store mevcudiyeti:**
- **iOS Member** — ID 1065000091 (Daxko LLC), v2.4.67 (15 Ekim 2025), **rating 4.6 (7K oy)** — pazarın en güvenilir martial-arts üye app sinyali (yüksek rating + yüksek hacim)
- **Android Member** — com.zenplanner.memberapp, ~4.6 ★ (developer index)
- **iOS New Staff** — ID 6744126414, v1.0.8 (8 Mayıs 2026), rating 4.0 (22 oy, yeni)

#### 1. Mobil uygulama temeli
- Native: ✅
- **Çok dilli: ✅ App Store listing'de "English, Dutch, French, German, Italian, Portuguese (EN + 5)"** — DACH için pozitif sinyal; ancak Capterra Q&A'da: *"Zen Planner supports the following languages: English"* → çelişki. App Store listing daha güvenilir kaynak (Apple resmi). Bizim için karar: **Almanca destek var, fakat doğrulanmalı.**
- Push: ✅

#### 2-4. Self-service + booking
- Profil, üyelik, saklı kart yönetimi: ✅
- Bekleme listesi: ✅
- DSGVO Art. 20: ❌

#### 5. Kündigungsbutton: ❌

#### 6. Family — Zen Planner'ın güçlü tarafı
- *"House multiple parents and children under one shared family account for simpler profiles and logins"*
- Çocuğun kuşak ilerlemesi ✅, devamı ✅, aile faturası ✅

#### 7. **Kuşak/rank — Sınıfının lideri**
- Member App: *"Use the customized workout, skill, and martial arts belt tracking within the Member App to engage members"*
- Yeni Staff App v1.0.6 (Şubat 2026): *"powerful new visibility into member rankings, giving staff instant access to current belt levels, upcoming rank progressions, and attendance requirements directly from member profiles, eliminating guesswork and miscommunication around ranking status."*
- İlerleme yüzdesi: ⚠️ Gymdesk competitive analizi: *"Zen Planner serves martial arts and fitness facilities… The platform handles basic rank tracking—you can log which belt a student holds—but lacks detailed progress bars, percentage completion, or technique checklists."* → Zen Planner belt görme var, **detaylı progression visualization Gymdesk'ten zayıf**.
- Antrenman geçmişi + leaderboard: ✅ (Workout Tracking, like, comment)

#### 8. Yeni Daxko Staff App (Ekim 2025)
- Clock in/out: ✅ — *"Staff clock in/out: Log work hours directly in the app so you can ensure accurate payroll and track shifts without manual entry"*
- Birthday/anniversary recognition: ✅ — *"Celebrate special moments: Recognize birthdays, anniversaries, and milestones to build stronger relationships"*
- Mesajlaşma: ⚠️ (üye not + email/text launch; chat değil)

#### 9-10. Help center ✅; granular bildirim ⚠️

#### Kullanıcı şikâyetleri (verbatim, son 12 ay)
1. **Yeni Staff App check-in friction**: *"Now to check someone in, instead of having a row of names and pictures to quickly select you must tediously type in names, and make multiple clicks just to get them in. Takes me way longer to do attendance now with this new app."* (US App Store, Mart 2026)
2. **Old Staff App kiosk bug**: *"Many bugs with the self checkout kiosk. Freezing, server errors, duplicate purchases, missed purchases, unable to look up existing member, etc."* (US App Store)
3. **B2B Capterra**: *"Our experience with Zen Planner has been nothing but frustrating. Their support is virtually nonexistent, and after months of emails, we are still waiting for a resolution to ongoing billing issues."*
4. **Pricing climb post-Daxko PE**: *"With the amount of negative reviews detailing similar experiences in recent years, I'm shocked they get any new customers at all… they try to get every penny they can put of their longtime customers"* (Capterra Director)

#### Soluty için ders
- **Kopyalanması:** (1) **Staff app'ten upcoming rank progressions + attendance requirements görme** — yeni v1.0.6 paterni; (2) Family account + single login; (3) Multi-language App Store listing (DE dahil); (4) Birthday/anniversary recognition (staff trigger'ı).
- **Kopyalanmaması:** (a) Üç paralel app — geçiş karmaşası; (b) "Type names" UX regression; (c) Old Staff kiosk freeze/duplicate bug; (d) Sosyal "like/comment workout" — Elite dövüş sanatları disiplin kültürüne uymuyor (kapsam dışı).

---

### 7. Spark Membership — Spark Member + Spark Kiosk + Owner App

**Ülke / Sahiplik:** ABD (Coral Springs, FL). PE: **Bregal Sagemount** (Eylül 2025 yatırım — BusinessWire, 2 Eylül 2025): *"The Company serves over 2,000 customers internationally and processes over $750 million in annual payments through its fully integrated platform."* (Önceki competitive-software belgesindeki "3,000 business owners" rakamı vendor pazarlama dilinden geliyor; bağımsız Bregal Sagemount kaynağı **2,000+** diyor). Martial-arts native (kurucular okul sahipleri).

**Mobil app stratejisi:** Çoklu: (a) Spark Member (generic + white-label), (b) Spark Kiosk (iPad tablet check-in), (c) Owner/Admin app, (d) Branded App ek maliyet.

**App Store mevcudiyeti:**
- **iOS Member** — ID 1453013929 (Spark Membership LLC), v8.6.0 (14 Mayıs 2026), **rating 3.7 (343 oy)** — **pazarın en düşük üye-app rating'i**
- **Android Member** — com.sparkmembership.generalapp, **3.8 ★ (712 review, 100K+ indirme)**, 26 Mart 2026
- **iOS Kiosk** — ID 1448107942

#### 1. Mobil uygulama temeli
- Native ✅
- **Çok dilli: ❌ EN only**
- Push ✅

#### 2-4. Self-service + booking
- Profil, payment + rank + attendance history görme ✅
- DSGVO Art. 20 ❌

#### 5. Kündigungsbutton ❌

#### 6. Veli — Kısıtlı (Kiosk paterni güçlü)
- Spark Kiosk: *"Guardian Notifications for Check-In/Check-Out: Keep guardians informed about pick-ups, offering reassurance and timely notifications."* — pazarda EŞSIZ paten
- Tam veli view ❌ (çocuk üzerinde aksiyon almıyor, sadece notif)

#### 7. Kuşak ✅ (View payment, rank and attendance history); yüzde ❌

#### 8. Spark Kiosk + Owner App
- Instructor Mode PIN ile lock/unlock ✅
- Yoklama ✅, mesajlaşma ✅ (Chat with staff)
- Bordro ❌

#### 9-10. Help center ✅; chat ⚠️ (üye-stüdyo, teknik support değil)

#### Kullanıcı şikâyetleri (verbatim, son 12 ay)
1. **Forgotten gym + Location ID (en sık)**: *"Worked fine for over a year. Recently it decided out-of-the-blue to forget the gym and is forcing me to choose a location. It is forcing me to enter a location ID number (I shouldn't have to hunt this number down) or choose from the list (which doesnt list the gym). This should be based on login information not based on some location ID or GPS (which doesn't work anyway!)."* (Google Play)
2. **Forced logoff loop**: *"This app is great when it is working. Until recently I have been logged off without warning. This is the second time a major log off situation has occurred for myself."* (US App Store)
3. **B2B vaatler tutmadı**: *"What they promised to do if I signed up, but they didn't do meet those promises… Poor quality. They charge a high fee and promised quality and everything that they do and that turned out just not to be true."* (Capterra)
4. **Mobile zayıflığı (pozitif review içinde itiraf)**: *"The Phone app is the only thing that seems to have some isssues."* (Capterra)

#### Soluty için ders
- **Kopyalanması:** (1) **Guardian Check-in/Check-out notifications** — çocuk derse geldi/çıktı veli push — Elite için kritik; (2) Kiosk'ta Instructor Mode PIN; (3) Light/Dark mode (Spark Kiosk).
- **Kopyalanmaması:** (a) **Spark Member app'in bütünü** — 3.7 rating + sürekli log-off + Location ID friction = ne yapmamak gerektiğinin manifestosu; (b) Branded app rollout sırası karmaşası; (c) EN-only.

---

### 8. Kicksite — PWA / Mobile Web Portal (NO native)

**Ülke / Sahiplik:** ABD (Lenexa, KS). Bağımsız (aile işletmesi). Kicksite, Gymdesk competitive analizinde: *"family-owned, with a reputation for strong customer support."*

**Mobil app stratejisi:** **PWA / Mobile Web only — native iOS/Android app YOK.** Kicksite'ın kendi blog'u (newsletter "Introducing the Kicksite Mobile Web App and Member Portal"): *"Functioning just like a mobile app, our mobile web app saves users the hassle of having to download from the Apple App Store or Google Play Store, saves space on their device, and saves time as the mobile web app will automatically update as time goes on."* Kicksite FAQ ("Celebrating National App Day"): *"THE KICKSITE APP IS NOT IN THE APP STORE… Web apps function in-browser and Mobile apps are downloadable through app stores."* Yeni staff mobile web app instructor check-in için var.

**App Store mevcudiyeti:**
- iOS: ❌ Yok
- Android: ❌ Yok (Play Store'da minimal "com.kicksite.gettoweb" wrapper ima ediliyor ama Kicksite kendi resmen native değil diyor)

**Native mi PWA mi:** **PWA** — DACH'ta App Store/Google Play discoverability sıfır. Üyenin "Browser → Home Screen'e ekle" yapması gerekiyor.

#### 1-10. (Tüm kategoriler PWA içinde)
- Native iOS+Android ❌
- Çok dilli ❌ EN
- Push: ❌ (PWA iOS 16.4+ push destekli ama Kicksite implement etmemiş; G2 review verbatim: *"Doesn't contact the members. I wish it would send texts to people that have appointments."*)
- Profil/üyelik/ödeme görme web portal ✅
- Achievements + medya kütüphanesi ✅ (vendor "Achievements tool allows you to create awards for your students and members to recognize their accomplishments")
- Kündigungsbutton ❌
- Veli portal ⚠️

#### Kullanıcı şikâyetleri
1. **Native app eksikliği (Gymdesk competitive analizi)**: *"Kicksite doesn't have a native mobile app. Your members access their account through a mobile browser—and gym owners report it's slow and clunky."*
2. **Bildirim eksikliği (G2)**: *"Doesn't contact the members. I wish it would send texts to people that have appointments."*
3. **Video upload sınırlı**: *"The video size upload for students access is limited to 1.5 gb which was unfortunate to learn after the fact."* (Capterra)

#### Soluty için ders
- **Kopyalanması:** (1) Achievements tool + sertifika oluşturma; (2) Media library folder organization (öğretim videoları); (3) Single-tap staff check-in paradigması.
- **Kopyalanmaması:** **PWA-only stratejisi** — DACH üyelerin push, App Store discoverability, biometric login beklentilerini karşılamıyor. Soluty'nin Faz 2'si native — bu **direkt diferansiyatör.**

---

## BÖLÜM 2 — Karşılaştırma Matrisi

**Lejant:** ✅ Tam destek · ⚠️ Kısmi/zayıf · ❌ Yok veya belgelenmemiş

| Boyut | Magicline | Eversports | Mindbody | Glofox | Gymdesk | Zen Planner | Spark | Kicksite |
|---|---|---|---|---|---|---|---|---|
| **1. Native iOS + Android** | ✅ Çift app (MySports + Branded) | ✅ Marketplace + Branded (Q1 2025) | ✅ Üye + Business + Branded add-on | ✅ Branded standart | ✅ + branded $100/ay | ✅ Üye + yeni Daxko Staff (10/2025) | ✅ Üye + Kiosk + Owner | ❌ **PWA only** |
| **2. DE dilinde native UI** | ✅ DE+EN | ✅ 6 dil (DE dahil) | ⚠️ Üye EN+ES, Business EN+5 (DE dahil) | ❌ EN only | ❌ EN only (JP destekli) | ✅ EN+5 (DE App Store listing — Capterra çelişiyor) | ❌ EN only | ❌ EN only |
| **3. Push notification + waitlist** | ✅ | ✅ (en güçlü) | ✅ "We miss you" | ⚠️ spam şikayetleri | ✅ no-middleman | ✅ | ✅ | ❌ |
| **4. Üye self-service (profil/üyelik/ödeme)** | ✅ MySports Self-Service | ✅ | ✅ tam suite | ✅ ama waitlist bug'lı | ✅ family switch bug | ✅ | ✅ ama logoff bug | ✅ web portal |
| **5. DSGVO Art. 20 üye-app içi export** | ⚠️ admin var, üye-app belgesiz | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ |
| **6. Ders rezervasyon + waitlist promosyon** | ✅ | ✅ Free your spot | ✅ otomatik | ⚠️ haftalarca bug | ✅ | ✅ | ✅ | ✅ web |
| **7. §312k BGB Kündigungsbutton mobile** | ✅ **Tek tam destek** | ⚠️ web var, mobile belgesiz | ❌ | ❌ | ❌ | ❌ | ❌ | ❌ |
| **8. Family account / veli view** | ❌ | ❌ (roadmap) | ⚠️ marketing var, app zayıf | ⚠️ child account sınırlı v9.0.5 | ✅ konsept + switch bug | ✅ multi-parent + child | ⚠️ Guardian check-in notif | ⚠️ web parent portal |
| **9. Martial-arts kuşak/rank app içi** | ❌ | ❌ | ⚠️ marketing var, native zayıf | ❌ | ✅ **belt + skills + checklist + bulk + visible progress** | ✅ belt + skills + video (yüzde Gymdesk'ten zayıf) | ✅ rank history + attendance | ✅ Achievements + sertifika |
| **10. Antrenör app (yoklama, mesajlaşma, bordro)** | ✅ Magicline App | ❌ web Manager only | ✅ Business + ADP/Paychex payroll | ⚠️ Pro app feature eksik | ✅ Owner App (bordro ❌) | ✅ yeni Daxko + clock in/out | ✅ Kiosk + Owner (bordro ❌) | ⚠️ yeni mobile web staff |

**Hızlı yorum:**
- **Magicline** DACH yasal uyum lideri ama martial arts native değil.
- **Zen Planner** martial arts + DE listing + family lideri ama US-merkezli (Kündigungsbutton yok).
- **Gymdesk** martial-arts native lideri ama EN-only + iOS 3.5/38 rating + family switch bug.
- **Mindbody** marketplace ölçeği lideri (4.9/259K) ama tek-stüdyo niş için over-engineered + DACH compliance yok.
- **Glofox / Spark / Kicksite** üye-app kalitesi konusunda ciddi pazar şikayetleri var.

---

## BÖLÜM 3 — Faz 2 Yapımıza Çapraz Kontrol

### Soru 1 — Bizim mevcut Faz 2'mizde olmayan ama olması gereken (pazar standardı)

| # | Eksik özellik | Hangi rakipler yapıyor | Karar |
|---|---|---|---|
| 1.1 | "Stüdyom haberleri / announcements" ayrı sekme | Glofox v8.1.5, Spark, Kicksite | **EKLENSİN** (Grup 1 altı) |
| 1.2 | Antrenör BIO + foto ders detayında | Glofox v8.1.5, Zen Planner | ✅ Zaten Faz 2'de — TUTULSUN |
| 1.3 | "Late cancellation / free your spot" | Eversports, Zen Planner | **EKLENSİN** (Grup 3) |
| 1.4 | Waitlist auto-promote akışı + push | Eversports, Mindbody, Magicline, Zen Planner | **EKLENSİN** (Grup 3 detay) |
| 1.5 | Workout leaderboard + like/comment | Zen Planner | **ÇIKARILSIN** — Elite kültürü |
| 1.6 | Kuşak sertifikası PDF indirme | Kicksite Achievements | **EKLENSİN** (Grup 6) |
| 1.7 | Staff clock in/out → payroll | Mindbody Business, yeni Zen Planner Staff | **KISMI EKLENSİN** (Grup 7 + Faz 4 bağlantısı) |
| 1.8 | Veliye "çocuk geldi/çıktı" push | Spark Kiosk Guardian Notif | **EKLENSİN** (Grup 5) |
| 1.9 | Family account: tek login, üyeler-arası switch | Gymdesk, Zen Planner | ✅ Grup 5 ile örtüşüyor — GENİŞLETİLSİN |
| 1.10 | Loyalty + referral app içinden | Magicline, Zen Planner | **DEĞERLENDİR (P2)** — Elite 250 üye için ROI net değil |
| 1.11 | Light/Dark mode | Spark Kiosk | **EKLENSİN** — düşük efor |
| 1.12 | Biometric login (Face ID/Touch ID) | Gymdesk eksiği şikayet | **EKLENSİN** (Grup 1) |
| 1.13 | Skills mastery checklist (teknik bazlı) | Gymdesk | ✅ Zaten Grup 7'de — TUTULSUN ve teknik kütüphanesi ile birleştir |
| 1.14 | Trainer evaluation form (sınav öncesi) | Gymdesk | **EKLENSİN** (Grup 7) |
| 1.15 | Substitute trainer workflow | Mindbody Substitution Management | **DEĞERLENDİR (P2)** — Elite az antrenör |

### Soru 2 — Bizim mevcut Faz 2'de olan ama gereksiz olabilecek

| # | Faz 2 özelliği | Rakipler yapıyor mu? | Karar |
|---|---|---|---|
| 2.1 | Çoklu dil DE/EN/**TR** | Magicline DE+EN; Eversports 6 dil; Zen Planner EN+5; **TR hiç kimsede yok** | **TUTULSUN — Soluty diferansiyatörü** |
| 2.2 | Veli için ayrı view + aile faturası | Gymdesk, Zen Planner native | **TUTULSUN — kritik segment** |
| 2.3 | Antrenör performans takibi (kriter checklist) | Gymdesk var; diğerleri zayıf | **TUTULSUN** |
| 2.4 | App içi canlı chat | Gymdesk var; diğerleri ❌ | **TUTULSUN ama EK1 — basit ticket / WhatsApp link ile başlayabilir** |
| 2.5 | Bildirim tercih yönetimi (granular) | Eversports basit toggle; granular ayar nadir | **TUTULSUN — Glofox spam şikayeti ile pazar boşluğu** |
| 2.6 | Antrenör profili (üye YORUM YAPAMAZ) | Glofox bio var; üye yorum genelde yok | **TUTULSUN — doğru karar** |

### Soru 3 — Bizim diferansiyatörümüz (rakiplerde olmayan, bizde olacak)

| # | Diferansiyatör | Pazar durumu |
|---|---|---|
| 3.1 | DSGVO Art. 20 üye-app içinden tek-tıkla veri export | Hiçbir rakipte yok |
| 3.2 | **Türkçe arayüz** (DE/EN/TR) | Hiçbir rakipte TR yok. Berlin'de Türk asıllı topluluk için baseline |
| 3.3 | §312k BGB Kündigungsbutton **+** sözleşme PDF arşivi tek mobile pakette | Magicline yarı destek; diğer 7 rakipte yok |
| 3.4 | Kuşak + Antrenman + Veli + DSGVO + DE+TR **tek native app**ta birleşik | Gymdesk ve Zen Planner parça parça; DACH/TR uyumlu birleşim hiçbir yerde yok |
| 3.5 | App içi gerçek canlı chat (WhatsApp link değil) | Gymdesk'te var, diğerleri ❌ |
| 3.6 | Antrenör profili **üye yorum yapamaz** (Elite disiplin kültürü) | Mindbody'de marketplace yorum, Elite'e uygun değil |

### Faz 2 Yapısı Üzerinde Nihai Karar (TUT / EKLE / ÇIKAR)

**Grup 1 — Mobil uygulama temeli**
- TUTULSUN: Native iOS+Android, çok dilli (DE/EN/TR), push notification
- EKLENSİN: **Biometric login (Face ID/Touch ID)**, **Light/Dark mode**

**Grup 2 — Üye self-service**
- TUTULSUN: Profil, üyelik durumu, ödeme geçmişi, **DSGVO Art. 20 veri dışa aktarma**
- Kapsam yeterli

**Grup 3 — Ders ve etkinlik akışı**
- TUTULSUN: Ders programı, rezervasyon + iptal, bekleme listesi, etkinlik kaydı
- EKLENSİN: **"Late cancellation / free your spot"**, **bekleme listesi auto-promote + push akışı**

**Grup 4 — Üye sözleşme ve yasal arayüz**
- TUTULSUN: Kündigungsbutton mobile (§312k BGB uyumlu), sözleşme yenileme, sözleşme PDF arşivi
- Yok — kapsam zaten diferansiyatör

**Grup 5 — Veli görünümü**
- TUTULSUN: Çocuğun kuşak ilerlemesi, devamı, aile faturası
- EKLENSİN: **Veliye "çocuk derse geldi/çıktı" push**, **tek aile login + üye-arası switch (Gymdesk paterni, bug'larından kaçınılarak)**

**Grup 6 — Üye ilerlemesi**
- TUTULSUN: Kuşak/rank ilerlemesi, antrenman geçmişi, ilerleme yüzdesi
- EKLENSİN: **Kuşak sertifikası PDF indirme**, **sıradaki rank için kalan kriterler (devam + teknik checklist) progress bar**
- ÇIKARILSIN: Sosyal "like/comment workout"

**Grup 7 — Antrenör tarafı**
- TUTULSUN: Kendi takvim, görevler, yoklama, performans takibi (kriter checklist), mesajlaşma, ders planı, üye check-in
- EKLENSİN: **Trainer clock in/out** (Faz 4 payroll bağı), **Evaluation form** (sınav öncesi), **Birthday/anniversary üyeye push trigger**

**Ek 1 — App içi canlı chat** — TUTULSUN (diferansiyatör)
**Ek 2 — Bildirim tercih yönetimi** — TUTULSUN (granular ayar pazar boşluğu)
**Ek 3 — Antrenör profil görüntüleme (üye yorum yapamaz)** — TUTULSUN (doğru karar)

**Sonuç:** Mevcut 7 grup + 3 ek YAPI doğru. **8 yeni ekleme** önerilir; **1 çıkarma** önerilir; **0 grup tümüyle gereksiz değil**. Soluty'nin Faz 2 kapsam tasarımı pazar araştırması ile **doğrulanmıştır**.

---

## BÖLÜM 4 — Caveats

### Yeterince derin inceleyemediğimiz ürünler
- **Magicline MySports Member iOS** — App Store sayfasında doğrudan rating görünmedi (yalnızca AppBrain üçüncü taraf 4.69/5 — 58 oy). DACH'taki en yakın rakip olduğu için bu **kritik boşluk**; iOS rating'inin Apple sayfasından teyidi tavsiye edilir.
- **Eversports Branded App** — Aralık 2024 lansman duyurusu, Mayıs 2026 itibarıyla canlı kullanıcı review'ı bulunamadı. Marketplace app'ten gerçek farkı deneyimleyemedik.
- **Spark Owner App + 2,000 vs 3,000 müşteri rakamı** — Bregal Sagemount Eylül 2025 press release "over 2,000 customers" derken Spark kendi pazarlama dilinde "3,000 business owners worldwide" diyor. **Bregal Sagemount rakamı daha güvenilir.**
- **Mindbody üye-app Almanca kullanım** — Üye app EN+ES'le sınırlı (Business app EN+5 — DE dahil). DACH üye-tarafı için Mindbody **resmi olarak etkisiz**.

### Eski olabilecek review verisi
- Glofox iOS rating reset (v9.0.x rebrand sırasında) → 4.5 / 190 oy istatistiksel güvensiz. Trustpilot 388 review negatife eğimli ("constantly crashes").
- Zen Planner Yeni Staff App Ekim 2025 lansman → sadece 22 iOS oyu; trend henüz oturmamış.
- MySports → Branded App geçişi son 18 ayda → MySports App'in geleceği vendor "deprecate" sinyali veriyor.

### App Store rating ile real-world kullanım arasındaki ayrım
- **Mindbody iOS 4.9 (259K oy)** = consumer marketplace bias (üyeler çoklu stüdyo arıyor, tek-stüdyo deneyimi yaşamıyorlar). Verbatim review'lar **booking failure** + **history loss** etrafında yoğun — yüksek star + ciddi şikayet paradoksu.
- **Zen Planner Member 4.6 (7K)** — pazardaki en güvenilir martial-arts üye-app sinyali; rating + hacim dengesi sağlam.
- **Gymdesk iOS 3.5 (38 oy)** — çok düşük örneklem. Owner-tarafı Capterra'da çok pozitif → üye-app ve owner-app deneyimi farklı.
- **Spark Member iOS 3.7 (343) + Android 3.8 (712)** — geniş örneklem + tutarlı düşüklük → gerçek kalite sinyali.

### Varsayım: notuyla geçtiğimiz konular
1. MySports member-app içinde **PDF fatura indirme akışı** — vendor docs'ta doğrudan görmedik; varsayım kısıtlı.
2. Magicline trainer app (Magicline App) içinde **bordro/saat raporu** — web admin'de var, mobile-içi belgesi sınırlı.
3. Eversports app içinde DACH **Kündigungsbutton tam compliance** — web Self-Service'te belgelenmiş; mobile-içi §312k BGB spesifik button placement görmedik.
4. **Mindbody family account'un mobile UI**'sındaki gerçek implementasyon — marketing blog'unda var, üye-app feature dokümantasyonu zayıf.
5. **Glofox Pro admin app**'inde ders planı paylaşımı — pazarlama dilinde geçiyor, gerçek feature doc'u belirsiz.
6. **Zen Planner App Store DE dil desteği** vs Capterra "English only" çelişkisi — App Store listing daha güvenilir kaynak ama vendor sayfasında DE dokümantasyon görmedik.

### Kaçırdığımız önemli alanlar (gelecek araştırma)
- Apple Watch + WearOS desteği — hiç rakip için araştırmadık; kickboxing için "saatten check-in" değerli olabilir (Faz 2 kapsam değil).
- Offline mode — özellikle salon WiFi zayıfsa check-in. Gymdesk reviews'inde "Limited offline functionality" zayıflık not edilmiş.
- A11y (erişilebilirlik) — VoiceOver/TalkBack: tüm rakipler App Store'da "developer has not yet indicated which accessibility features this app supports" — **pazar zayıf, Soluty potansiyel diferansiyatör.**

### Bu araştırmanın güven seviyesi
- **Yüksek güven:** Magicline DSGVO/Kündigungsbutton dokümantasyonu; Mindbody üye-app şikayet temaları (verbatim quotes); Gymdesk martial-arts native belt tracking (vendor + Capterra); Kicksite'ın native app olmaması (vendor kendi yazısı); Zen Planner DE App Store listing; PE sahiplik bilgileri (PSG/Vista/Thoma Bravo/Genstar+GI/Bregal Sagemount — birincil basın bültenleri).
- **Orta güven:** Eversports Branded App fonksiyonel kapsam (lansman → review verisi sınırlı); Spark Owner App detay (review hacmi düşük).
- **Düşük güven:** MySports member-app iOS rating (sadece üçüncü-taraf tracker); Spark beyaz-etiket app upload tamamlanma süresi (vendor "few days" iddiası, gerçek müşteri deneyimi belirsiz); Zen Planner App Store DE dil desteğinin **gerçek** UI parite kalitesi (listing var, UI screenshot doğrulaması yok).

---

## RECOMMENDATIONS — Aşamalı Aksiyon

**P0 (Faz 2 başlamadan önce — şimdi):**
1. Faz 2 kapsam dokümanına **8 ekleme**yi (matris üstünde işaretli) entegre et: biometric login, light/dark mode, late-cancellation/free-your-spot, waitlist auto-promote, kuşak sertifikası PDF, veliye check-in push, family üye-switch, trainer clock-in, evaluation form, news/announcements sekmesi.
2. **1 çıkarmayı** uygula: sosyal "like/comment workout" — kapsam dışı.
3. Magicline'ın **Kündigungsbutton "Verträge" menüsü placement**'ını UX spec'ine kopyala (§312k BGB compliance).

**P1 (Faz 2 sprint planlamasında):**
4. Gymdesk martial-arts paradigmasını incele: technique library + skills mastery checklist + bulk promotions UI. Bu Faz 2 Grup 6+7 birleşiminin temel akış olmalı.
5. Glofox "two-click booking" hedefini benchmark al: hiçbir rezervasyon akışı 2 tap'tan fazla olmasın.
6. Eversports DE/AT/CH ölçeğindeki **6-dil i18n** mimarisinden öğren: language switcher app içi (gym lokasyon değiştirmeden), JSON-based string catalog.

**P2 (Faz 2 sonrası, gözden geçirilecek):**
7. Loyalty/referral programı — 250 üye + organik referansla 30+ yıllık okul için ROI net olduğunda eklenebilir.
8. Apple Watch / WearOS check-in entegrasyonu — Faz 3 web sitesi sonrası değerlendir.
9. A11y (VoiceOver/TalkBack tam destek) — pazar boşluğu, Soluty diferansiyatör fırsatı.

**Karar eşikleri (recommendation'ları tetikleyecek):**
- Eğer üye anketinde %30+ "TR dil ihtiyacı" çıkarsa → P0'a yükselt.
- Eğer beta'da iOS app 3.8 altına düşerse → Glofox/Spark stability anti-pattern'ından öğren, release dondur, kalite sprint'i.
- Eğer Magicline iOS rating'i doğrulanır 4.7+ çıkarsa → MySports DACH'taki en güçlü organik competitor demektir; pricing/positioning yeniden gözden geçir.

---

**Stand der Recherche:** 22 Mayıs 2026 · Soluty R&D · Elite Kickboxing Berlin Faz 2 kapsam doğrulama · Dosya: `docs/R&D/research/mobile-app-research-raw.md`