# Dış Sistem Entegrasyonları

> **İç çalışma dokümanı — müşteriye gitmez.** Soluty iç referansı; "neler dahil, neden, müşteri metnine nasıl yansır" sorularına cevap verir. Fazlardan bağımsız izlenen tek kaynak.

---

## 1. Amaç

Elite Kickboxing engagement'ında birden fazla fazda (mobil app, web sitesi, Communication Cockpit, Content Engine vb.) kullanılan dış sistem entegrasyonlarının kararları ve gerekçeleri tek bir yerde, izlenebilir biçimde tutulur. Bu doküman fazların hiçbirine bağlı değildir — fazlar arası yatay bir referans katmanıdır.

**Kim okur?** Soluty iç ekibi.
**Ne için?** İlerleyen turlarda "Buffer mı kullanıyorduk?", "Drive entegrasyonu kararı neydi?", "Yönetici bu vendor'u sorarsa nasıl cevaplarız?" gibi sorulara hızlı cevap için.
**Müşteriye gitmez.** Müşteri metinlerinde vendor adı geçmez; her entegrasyonun altındaki "müşteri-yüzü söylem" alanı vendor adı kullanmadan yazılmıştır.

---

## 2. Genel Prensip

**Müşteri tarafında "tek platform" vaadi; iç mimaride dünya standardı araçlarla bilinçli entegrasyon.**

Soluty'nin tutumu açıktır: yöneticiyi ve operasyonel ekibi en iyi sonuçla buluşturmak için her şeyi sıfırdan yazmak yerine, alanında olgunlaşmış sistemlerle birleşmek. Bu hem zaman, hem kalite, hem maliyet açısından doğru karardır. Yapay zekâ çağında bir görseli sıfırdan üretmek yerine olgun bir görsel-üretim platformuyla konuşmak; bir CDN'i kendi kurmak yerine dünyanın en hızlı dağıtım ağıyla entegre olmak — bunlar profesyonel mimarinin gereğidir.

Müşteri tarafındaki "tek platform" anlatısı ile iç mimarideki çoklu-entegrasyon yapısı arasında çelişki yoktur. Müşteri için tek bir omurga, tek bir oturum, tek bir yönetim ekranı vardır. Arka planda hangi sistemlerle konuşulduğu Soluty'nin mimari kararıdır — tıpkı bir bankanın kart işlemlerinde bir kurum, kimlik doğrulamada başkası, bilgilendirmede bir üçüncüsü ile çalışıp kullanıcıya tek bir bütün olarak görünmesi gibi. Müşteri için **tek bir bütün** vardır; bütünün içindeki parçalar bizim mimari sorumluluğumuzdur.

---

## 3. Onaylanan Entegrasyonlar

### Canva

| Alan | İçerik |
|---|---|
| **Amaç** | Görsel ve video şablon üretimi; sosyal medya postu, blog görseli, etkinlik posteri, e-posta görseli için baz tasarım üretimi ve marka-tutarlı şablon kütüphanesi. |
| **Kullanıldığı fazlar** | Horizont 2 Faz 3 (Content Engine) ağırlıklı; Horizont 1 Faz 3 (Web) ve Horizont 2 Faz 1 (Communication Cockpit) sınırlı kullanım. |
| **Maliyet notu** | Canva for Teams aylık tarife — değerlendirme aşamasında (ekip büyüklüğüne göre lisans sayısı netleşecek; tahminî aylık ~20-100 EUR mertebesi). |
| **Alternatif değerlendirmesi** | Adobe Express ve Figma değerlendirildi. Canva'nın şablon zenginliği, sosyal medya formatlarına optimize boyut presetleri ve API erişimi (otomatik içerik üretim akışlarına bağlanabiliyor) bu seçimi belirledi. Adobe Express'in API olgunluğu yetersiz; Figma marka-yönetim odaklı, şablon-üretim hızı düşük. |
| **Müşteri-yüzü söylem** | "Markaya özel bir görsel kütüphanesi kuruyoruz; her sosyal medya postu, etkinlik posteri ve e-posta görseli aynı tutarlı görsel kimlikle, dakikalar içinde üretilebilir hâle geliyor." |

---

### Meta Business API

| Alan | İçerik |
|---|---|
| **Amaç** | Instagram, Facebook ve Messenger entegrasyonu — post yayını, yorum yönetimi, DM akışı, performans ve etkileşim analitiği. |
| **Kullanıldığı fazlar** | Horizont 2 Faz 1 (Communication Cockpit — DM ve yorum yönetimi) ve Horizont 2 Faz 3 (Content Engine — post yayını ve analitik). |
| **Maliyet notu** | API kullanımı ücretsiz; Meta tarafında yayınlanan reklam bütçesi ve App Review süreçleri ayrı kalem. |
| **Alternatif değerlendirmesi** | Doğrudan Meta API mı, yoksa aracı bir SaaS (Buffer/Hootsuite vb.) mı sorusu tartışıldı — doğrudan API tercih edildi (gerekçeler Bölüm 5 "Vazgeçilenler" listesinde). Meta API en yüksek kontrol, en az aracı, en düşük marjinal maliyetli yoldur. |
| **Müşteri-yüzü söylem** | "Instagram ve Facebook tarafındaki her etkileşim — DM, yorum, post planlaması — tek bir omurga üzerinden yönetilir; ayrı sekmelerde, ayrı uygulamalarda dolaşmak gerekmez." |

---

### TikTok for Business API

| Alan | İçerik |
|---|---|
| **Amaç** | TikTok hesabı üzerinden video yayını, yorum ve DM okuma/cevaplama, performans verisi. |
| **Kullanıldığı fazlar** | Horizont 2 Faz 1 (Communication Cockpit — yorumlar ve DM) ve Horizont 2 Faz 3 (Content Engine — video yayını ve performans takibi). |
| **Maliyet notu** | API kullanımı ücretsiz; TikTok tarafında reklam bütçesi ayrı kalem. |
| **Alternatif değerlendirmesi** | TikTok'a API ile bağlanma seçeneği son birkaç yılda olgunlaştı — şu an doğrudan API en uygun yol. Aracı SaaS'lar (Later, Sprout Social) bu kanalda hâlâ kısıtlı yetenek sunuyor ve yayın geçişi gecikmeli olabiliyor. |
| **Müşteri-yüzü söylem** | "TikTok tarafındaki yayın, yorum ve performans verileri operasyon ekranında diğer kanallarla aynı yerde görünür — TikTok'a girip ayrı bir cihaza bakmak gerekmez." |

---

### YouTube Data API

| Alan | İçerik |
|---|---|
| **Amaç** | YouTube kanalı üzerinden video yayını, yorum okuma ve cevaplama, analitik veri (görüntülenme, izlenme süresi, abone artışı). |
| **Kullanıldığı fazlar** | Horizont 2 Faz 1 (Communication Cockpit — yorumlar) ve Horizont 2 Faz 3 (Content Engine — video yayını ve analitik). |
| **Maliyet notu** | API kullanımı günlük kotaya bağlı; Elite ölçeğinde ücretsiz seviyede kalır. |
| **Alternatif değerlendirmesi** | YouTube ekosistemi için Google tarafından sağlanan resmi API tek doğru yol. Aracı katman gerekmez; kazanılan bir şey yok, maliyet ve kontrol kaybı var. |
| **Müşteri-yüzü söylem** | "YouTube tarafındaki yorumlar ve video performans verileri operasyon ekranında diğer kanallarla bir bütün hâlinde takip edilir; antrenör sayfaları ve video arşivi marka inşasının ölçülebilir parçası olur." |

---

### Bunny.net + Cloudflare R2

| Alan | İçerik |
|---|---|
| **Amaç** | Medya depolama ve içerik dağıtım ağı (CDN). Cloudflare R2 ucuz, dayanıklı depolama; Bunny.net hızlı, küresel dağıtım. İki sistem birlikte hem maliyet hem performans açısından optimum noktadadır. |
| **Kullanıldığı fazlar** | Horizont 2 Faz 3 (Content Engine — video/görsel arşivi, üretilen içerik yayını) ve Horizont 1 Faz 2 (Mobil app — antrenör profil görselleri, ders galerileri, kuşak sertifikaları gibi medya servisi). |
| **Maliyet notu** | R2 depolama TB başına aylık ~15 USD, dışarı çıkış (egress) ücreti yok — bu nokta AWS S3'e karşı büyük avantaj. Bunny.net CDN trafiği üzerinden ücretlendirilir; Elite ölçeğinde aylık birkaç on dolar mertebesi (değerlendirme aşamasında). |
| **Alternatif değerlendirmesi** | AWS S3 + CloudFront (klasik kombinasyon) değerlendirildi; egress maliyeti Elite ölçeğinde gereksiz yüksek. Backblaze B2 + Bunny.net da denendi; R2'nin Cloudflare ekosistemine entegrasyonu (Workers, DNS, görsel optimizasyonu) toplam maliyet avantajını korurken operasyonel kolaylık sundu. |
| **Müşteri-yüzü söylem** | "Marka videolarınız, üyelerinizin gördüğü ders kayıtları ve etkinlik görselleri dünyanın en hızlı dağıtım ağı üzerinden sunulur — Berlin'den biri açtığında milisaniyeler içinde yüklenir; mobil hattı yavaş olsa bile gecikme hissetmez." |

---

### Google entegrasyonları

Google ekosistemiyle birden fazla noktada konuşulacak. Aşağıda kesin onaylı alt kalemler. (Değerlendirmede olan Google alt kalemleri — Calendar, Drive, Workspace SSO — Bölüm 4'tedir.)

#### Google Maps

| Alan | İçerik |
|---|---|
| **Amaç** | Web sitesinde tıklanabilir konum ve yol tarifi entegrasyonu; mobil uygulamada salon konumu ve yön desteği. |
| **Kullanıldığı fazlar** | Horizont 1 Faz 3 (Web — yol tarifi haritası) ve Horizont 1 Faz 2 (Mobil app — konum servisi). |
| **Maliyet notu** | Maps JavaScript API ve Static Maps API aylık ücretsiz kota içinde kalır (Elite ölçeğinde aylık 28.500 yüklemeye kadar ücretsiz). |
| **Alternatif değerlendirmesi** | OpenStreetMap ve Mapbox değerlendirildi; Berlin kullanıcılarının Google Maps'i tanıma oranı ve mobilde "yol tarifi başlat" kullanım reflexi diğer iki seçeneğin önüne geçti. Self-hosted OSM yığınının operasyonel maliyeti Elite ölçeğinde haklı çıkmıyor. |
| **Müşteri-yüzü söylem** | "Siteye giren biri salonunuzun yerini görür, telefondan tek tıklamayla yol tarifi alır; deneme dersi için fiziksel olarak gelmek isteyenin önündeki ilk engel ortadan kalkar." |

#### Google My Business (Google Business Profile)

| Alan | İçerik |
|---|---|
| **Amaç** | Yorum yönetimi (yeni yorumlar tek ekrana düşer), etkinlik post'ları, salon bilgilerinin (saat, foto, açıklama) tek noktadan güncellenmesi. |
| **Kullanıldığı fazlar** | Horizont 1 Faz 3 (Web — yorum karuseli ve GMB sync), Horizont 2 Faz 1 (Communication Cockpit — yorum cevapları), Horizont 2 Faz 3 (Content Engine — etkinlik post'ları). |
| **Maliyet notu** | API kullanımı ücretsiz. |
| **Alternatif değerlendirmesi** | GMB Berlin'de yerel arama görünürlüğü için tek mantıklı kanal. Aracı reputation-management vendor'ları (BirdEye, Podium) Elite ölçeğinde overkill ve aylık maliyetleri yüksek (200-500 EUR/ay). |
| **Müşteri-yüzü söylem** | "Google'da görünen yorumlarınız, salon bilgileriniz ve etkinlik duyurularınız operasyon ekranınızla aynı yerden yönetilir; ayrı bir Google sayfasına girmek, kim ne dedi kontrol etmek için cep telefonu açmak gerekmez." |

#### Google Analytics 4

| Alan | İçerik |
|---|---|
| **Amaç** | Web sitesi trafik ölçümü, üye olma akışında dönüşüm takibi, kanal performansı analizi (organik arama, sosyal medya, reklam). |
| **Kullanıldığı fazlar** | Horizont 1 Faz 3 (Web — analitik altyapısı). |
| **Maliyet notu** | GA4 ücretsiz; cookie consent ve DSGVO uyumu standart Soluty setup'ı kapsamında. |
| **Alternatif değerlendirmesi** | Plausible ve Matomo (DSGVO açısından daha "yerli" alternatifler) değerlendirildi; veri zenginliği ve raporlama derinliği açısından GA4'ün gerisinde. DSGVO uyumu için server-side tracking ve IP anonymization ile çözüldü — bu kombinasyon Berlin/DACH yargı pratiğinde kabul gören standart. |
| **Müşteri-yüzü söylem** | "Web sitesinden gelen her ziyaretçinin nereden geldiği, hangi sayfada ne kadar kaldığı, sonunda üye olup olmadığı ölçülür; reklam ve içerik kararları artık tahminle değil, gerçek rakamla alınır." |

---

## 4. Değerlendirme Aşamasında Olanlar

Şu an karara bağlanmamış, ilerleyen turlarda yeniden açılacak entegrasyonlar bu bölümde tutulur. Karar verildiğinde "Onaylanan Entegrasyonlar" bölümüne taşınır veya "Vazgeçilen" listesine eklenir.

> **Format notu:** Yeni kalemler buraya eklenir; karar verildiğinde yukarı (Onaylanan) veya aşağı (Vazgeçilen) taşınır.

### Google Calendar

| Alan | İçerik |
|---|---|
| **Amaç** | Etkinlik takvim senkronu — Elite'in sınav, seminer, kamp etkinliklerinin Google Calendar üzerinden üye/antrenör/yönetici takvimine düşmesi; iki yönlü sync potansiyeli. |
| **Kullanıldığı fazlar** | Henüz karar verilmedi — muhtemel: Horizont 1 Faz 1 (etkinlik modülü) veya Horizont 2 Faz 1 ile birlikte değerlendirilir. |
| **Maliyet notu** | API ücretsiz. |
| **Alternatif değerlendirmesi** | Apple Calendar (iCloud) ve Outlook Calendar da benzer entegrasyonlar sunuyor; iCal feed üretimi (.ics standardı) ile her üç ekosisteme aynı anda servis verilebilir. Doğrudan Google Calendar API mı yoksa iCal feed mi tercih edileceği teknik karar olarak ileri turda netleşecek — kullanıcı tarafında ekosistem dağılımı bilgisinden sonra. |
| **Müşteri-yüzü söylem** | (Karar verildiğinde yazılacak.) |

### Google Drive

| Alan | İçerik |
|---|---|
| **Amaç** | Elite'in mevcut Google Drive'ındaki dosyaların (foto, video, döküman) sistemin medya kütüphanesine ilk geçişi için kaynak. Sürekli sync değil — bir kerelik geçiş aracı olarak değerlendiriliyor. |
| **Kullanıldığı fazlar** | Horizont 1 Faz 2 (Mobil app medya servisi) veya Horizont 2 Faz 3 (Content Engine) başlangıç dolumunda kullanılması olası. |
| **Maliyet notu** | API ücretsiz. |
| **Alternatif değerlendirmesi** | Manuel dosya yükleme (zip indir/yükle) yerine API ile otomasyon başlangıç hızını arttırır. Elite'in Drive yapısı ve dosya hacmi Phase 1 erişiminden sonra öğrenilecek; o noktada API otomasyonu gerçekten gerekli mi yoksa tek seferlik manuel transfer yeter mi netleşir. |
| **Müşteri-yüzü söylem** | (Karar verildiğinde yazılacak.) |

### Google Workspace SSO

| Alan | İçerik |
|---|---|
| **Amaç** | Elite ekibinin (yönetici, operasyonel sorumlu, antrenörler) Soluty paneline kendi Google Workspace hesabıyla tek tıkla giriş yapabilmesi; ayrı kullanıcı adı/şifre yönetimi gerekmemesi. |
| **Kullanıldığı fazlar** | Henüz karar verilmedi — Horizont 1 Faz 1 (operasyon paneli) içinde değerlendirilebilir. |
| **Maliyet notu** | Workspace SSO tarafı ücretsiz; Soluty tarafında OAuth entegrasyon geliştirme efortu var (orta seviye). |
| **Alternatif değerlendirmesi** | E-posta + şifre klasik akışı her zaman alternatif. Elite ekibi 5-10 kişi mertebesinde olduğu için SSO operasyonel kazanım vs. geliştirme efortu dengesi henüz net değil. Microsoft 365 SSO da değerlendirme dışı değil — Elite ekibinin Workspace mı 365 mi kullandığı netleşecek. |
| **Müşteri-yüzü söylem** | (Karar verildiğinde yazılacak.) |

---

## 5. Vazgeçilen / Şimdilik Hayır Listesi

Değerlendirilip "şimdilik hayır" denen sistemler. Bu liste, yönetici veya operasyonel sorumlu "neden X yok?" diye sorduğunda net cevap verebilmek için tutulur.

### Buffer / SocialBee gibi aracı yayın SaaS'ları

| Alan | İçerik |
|---|---|
| **Ne reddedildi?** | Sosyal medya yayınlarının (Instagram, Facebook, TikTok, YouTube) bir aracı SaaS üzerinden zamanlanması ve yönetilmesi. |
| **Gerekçe** | (1) **Kontrol kaybı** — aracı katman, platform API'lerinin bütün yeteneklerini her zaman açmaz; yorum yönetimi, analitik veri ve DM tarafında kısıtlamalar var. (2) **Tek platform omurgasını bozar** — Communication Cockpit ve Content Engine ayrı bir yayın aracına yönlendirme yapamaz; her şey aynı omurgada akmalı. (3) **Aylık maliyet** — Buffer ($15-100/ay), SocialBee ($29-99/ay) seviyesinde sabit kalem doğrudan API kullanımıyla ortadan kalkar. (4) **Veri sahipliği** — yayın ve etkileşim verisinin üçüncü taraf üzerinden geçmesi yerine doğrudan platformdan alınması iz sürülebilirlik ve performans analizi için daha sağlıklı. |
| **İleride yeniden değerlendirme tetiği** | Elite'in sosyal medya hacmi ayda 200+ posta veya 10+ kanala çıkarsa; veya Elite DACH bölgesinde affiliate ağı kurup her affiliate'in kendi içeriğini yönetmesi gerekirse aracı SaaS modeli yeniden gündeme gelebilir. |

### Bynder / Frontify gibi kurumsal DAM (Digital Asset Management) sistemleri

| Alan | İçerik |
|---|---|
| **Ne reddedildi?** | Kurumsal ölçek DAM sistemleri ile marka varlığı yönetimi. |
| **Gerekçe** | (1) **Ölçek uyuşmazlığı** — Bynder ve Frontify, 50+ marka veya çoklu lokasyon DAM yönetimi için tasarlanmış; Elite tek lokasyon, tek marka. (2) **Maliyet** — bu sistemler yıllık 10.000-50.000 EUR mertebesinde, Elite'in marka varlığı hacmi bu yatırımı haklı çıkarmaz. (3) **Kendi DAM çözümümüz daha ekonomik ve özelleşebilir** — Bunny.net + R2 + iç meta-veri yönetimi Elite ölçeğinde tüm DAM ihtiyacını çok daha düşük maliyetle karşılar ve marka-spesifik akışlara göre özelleştirilebilir. |
| **İleride yeniden değerlendirme tetiği** | Elite Gracie Barra tarzı affiliate modeline geçip 10+ lokasyonu yönetir hâle gelirse kurumsal DAM mantıklı hâle gelir. |

### Hootsuite / Sprout Social gibi enterprise sosyal yönetim suite'leri

| Alan | İçerik |
|---|---|
| **Ne reddedildi?** | Çok hesap, çok kullanıcı, dashboard merkezli sosyal medya yönetim suite'leri. |
| **Gerekçe** | (1) **Maliyet** — Hootsuite ($99-249/ay), Sprout Social ($249-499/ay) seviyesinde sabit kalemler. (2) **Overkill** — bu sistemler kurumsal pazarlama ekipleri (10+ kişi, 5+ marka) için tasarlanmış; Elite ölçeğinde özelliklerin %80'i kullanılmaz. (3) **Soluty sistemi aynı işi zaten yapar** — Communication Cockpit + Content Engine ikilisi yayın planlama, yorum yönetimi, performans takibi, marka-tonlu otomatik cevap üretimi gibi temel ihtiyaçları zaten karşılıyor; üstelik Elite'in operasyonel verisiyle (üye CRM, sözleşme, ödeme) entegre çalışır — Hootsuite/Sprout bu entegrasyonu yapamaz. |
| **İleride yeniden değerlendirme tetiği** | Elite kurumsal bir pazarlama ekibi kurar ve 5+ markayı tek yerden yönetmesi gerekirse yeniden değerlendirilir — Horizont 3+ senaryosudur. |

---

## 6. Karar Geçmişi

| Tarih | Karar | Gerekçe | Referans |
|---|---|---|---|
| **2026-05-24** | İlk entegrasyon listesi onaylandı: Canva, Meta Business API, TikTok for Business API, YouTube Data API, Bunny.net + Cloudflare R2, Google Maps, Google My Business, Google Analytics 4 kesin onaylı; Google Calendar, Google Drive, Google Workspace SSO değerlendirmede. Buffer/SocialBee aracılığı reddedildi — doğrudan platform API yolu seçildi. Bynder/Frontify kurumsal DAM ve Hootsuite/Sprout enterprise suite'leri "şimdilik hayır" listesine alındı. | Yöneticiyi en iyi sonuçla buluşturmak için kendi yazmak yerine olgun sistemlerle birleşmek; ancak yayın katmanında aracı SaaS yerine doğrudan platform API tercihiyle hem kontrol hem maliyet hem omurga bütünlüğü korunur. | İlk entegrasyon yapılandırma turu — Soluty iç karar. |

---

*İç çalışma dokümanı. Müşteriye gitmez. Vendor adları yalnızca iç sütunlarda kullanılır; müşteri-yüzü söylem alanlarında vendor adı geçmez.*

**Son güncelleme:** 2026-05-24
**Sürüm:** 0.1 (ilk yapılandırma)
