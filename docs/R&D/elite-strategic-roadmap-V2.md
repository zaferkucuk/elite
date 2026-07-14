# Elite Kickboxing — Stratejik Yol Haritası

**Sürüm:** 2.1 — **ÇALIŞMA DRAFT (Türkçe)**
**Tarih:** 14 Temmuz 2026
**Hazırlayan:** Soluty GmbH
**Durum:** İç çalışma sürümü. Müşteri sürümü Almanca (formal *Sie*) olarak ayrıca hazırlanacaktır.

> **Çalışma notu:** Bu belge v1 yol haritasının yerini alır. v1 (`elite-strategic-roadmap.md`) arşiv olarak korunur, değiştirilmez.
> V2, iki gelişme sonrası yeniden kurulmuştur:
> 1. Elite'in mevcut sistemi **CenterCom**'un keşfedilmesi,
> 2. Elite'ten gelen **üye uygulaması talep listesi** (14 başlık).
>
> **v2.1 değişiklikleri:** Rezerve edilebilir hizmet akışı (§5.1), ödeme görünürlüğü (§5.1), mevcut sisteme bağlı yetenekler ayrı başlık (§5.6), birlikte netleştirilecek konular ayrı başlık (§11).
>
> Belgedeki *Açık Konular* bölümü yalnızca çalışma sürümüne aittir; müşteri sürümünde yer almaz.

---

## 1. Yönetici Özeti

Elite bugün çalışan bir operasyonel omurgaya sahip. Üyelik kayıtları, aidat tahsilatı, giriş kontrolü, dolap sistemi ve kasa süreçleri mevcut sistem üzerinde yürüyor — ve yürümeye devam edecek.

Eksik olan omurga değil. Eksik olan **üyenin gördüğü yüz.**

Bugün Elite'in üyesi, Elite'i telefonundan yaşayamıyor. Elite'i dışarıdan arayan bir insan, web sitesinden içeri giremiyor. Ve Elite'i Elite yapan şey — kuşak, sınav, teknik gelişim — hiçbir sistemde yaşamıyor; antrenörlerin hafızasında ve kâğıtta duruyor.

Kurmayı önerdiğimiz şey budur: **üye ile Elite arasındaki dijital köprü**, ve o köprünün üzerinde dövüş sporunun kendi dili.

---

## 2. Başlangıç Noktası — Bugünün Resmi

### Çalışan taraf

Mevcut sistem, bir spor işletmesinin operasyonel ihtiyaçlarını geniş ölçüde karşılıyor:

- Üye kayıtları ve üyelik durumu
- Aidat tahsilatı (SEPA) ve otomatik hatırlatma/ihtar akışı
- Turnike ile giriş kontrolü, kart ile dolap kilitleme
- Kasa, ürün ve stok yönetimi
- Yasal iptal butonu yükümlülüğü
- Muhasebe verisi aktarımı

Bunlar çalışıyor. **Bunlara dokunmuyoruz.**

### Eksik taraf

| Alan | Bugünkü durum |
|---|---|
| **Üye deneyimi** | Üyenin Elite ile dijital teması yok denecek kadar zayıf |
| **Dış dünya yüzü** | Web sitesi statik; deneme dersi ve ders programı akışı işlemiyor |
| **Dövüş sporu derinliği** | Kuşak, sınav, teknik gelişim hiçbir sistemde tutulmuyor |
| **Sözleşme süreci** | Kâğıt doldurma → imza → tarama → sisteme yükleme |
| **Ürün satış kanalı** | Üyeye ulaşan dijital bir satış kanalı yok |

---

## 3. Yaklaşımımız — Neyi *Yapmıyoruz*

Bir yol haritasının değeri, ne yapacağı kadar **ne yapmayacağıyla** ölçülür.

Mevcut sisteminizde çalışan hiçbir süreci yeniden kurmuyoruz. Bu bilinçli bir karardır. Çalışan bir omurganın üzerine ikinci bir omurga koymak size maliyet ve risk getirir; değer getirmez.

**Mevcut sistemde kalır:**

- Üye kayıtları ve üyelik durumu yönetimi
- Aidat tahsilatı, SEPA, hatırlatma ve ihtar süreçleri
- Turnike, kapı ve dolap donanımı
- Kasa, ürün, stok
- Yasal iptal butonu
- Muhasebe verisi aktarımı

**Biz kurarız:**

- Üyenin yüzü (mobil uygulama)
- Dış dünyanın yüzü (web sitesi)
- Elite'i Elite yapan katman (kuşak, sınav, gelişim)
- Dijital sözleşme akışı
- Bunları yöneten kumanda odası

İki sistem birbirinin yerine geçmez. **Birbirini tamamlar.**

---

## 4. Yol Haritası — Genel Bakış

| Faz | Ad | Odak |
|---|---|---|
| **Faz 1** | **Dijital Üye Deneyimi Omurgası** | Mobil uygulama + web sitesi + yönetim paneli + dövüş sporu katmanı |
| Faz 2 | Online Shop | Mobil uygulamanın ticari kanala dönüşmesi |
| Faz 3 | Elite AI | Yapay zekâ destekli asistanlar |
| Faz 4 | İletişim Merkezi | Tüm iletişim kanallarının tek noktada toplanması |
| Faz 5 | Medya Kütüphanesi ve Sosyal Medya | Teknik video arşivi + sosyal medya yönetimi |

**Faz 1 temeldir.** Diğer her şey onun üzerinde durur. Bu belgede yalnızca Faz 1 ayrıntılı olarak tanımlanmıştır; Faz 2–5 yönü gösterir, taahhüt oluşturmaz.

---

## 5. FAZ 1 — Dijital Üye Deneyimi Omurgası

Faz 1, **tek bir sistemin üç yüzüdür.** Üç ayrı ürün değil; aynı omurganın üç farklı ekranda görünen hâlidir. Ders programı bir yerde değişir — her yerde değişir.

Bu üç yüzün içinden geçen, hepsini birbirine bağlayan bir katman vardır: **dövüş sporu katmanı.**

---

### 5.1 Üye Mobil Uygulaması

Elite'in en önemli önceliği. Üyenin cebindeki Elite.

#### Profil ve Gelişim
- Kişisel bilgiler ve üyelik durumu
- **Kuşak derecesi ve antrenman seviyesi**
- Üyelik başlangıcı ("… tarihinden beri Elite üyesi")
- Kişisel gelişim çizgisi

#### Antrenman Planı ve Ders Kaydı
- Güncel ders programı
- Derse kayıt olma
- Ders doluluk göstergesi
- Otomatik hatırlatmalar

#### Katılım ve Antrenman Geçmişi
- **QR kod ile antrenman check-in'i**
- Katılınan antrenmanların geçmişi
- Antrenman istatistiği ve ilerleme

> **Neden QR, turnike varken?**
> Turnike *binaya girişi* kaydeder. QR check-in *hangi antrenmana katıldığını* kaydeder. İkisi farklı bilgidir — ve kuşak sisteminin ihtiyaç duyduğu ikincisidir. "Bu kuşağa geçmek için şu kadar antrenman" kuralı ancak ders bazlı kayıtla çalışır. QR, turnikenin yerine geçmez; onun üzerine bir katman ekler.

#### Haberler ve Bildirimler
- Kapalı günler ve tatiller
- İptal edilen dersler
- Stüdyo duyuruları
- Son dakika değişiklikleri
- Anlık bildirim (push)

#### Seminerler ve Etkinlikler
- Seminer ve etkinlik listesi
- Antrenör ve içerik bilgisi
- Kayıt ve bilet
- Etkinlik takvimi

#### Sınav Sistemi
- Sınav takvimi
- Sınava kayıt
- Kuşak / seviye ilerlemesi
- Sınav bilgilendirmeleri

#### Antrenör Profilleri
- Antrenör tanıtımları ve uzmanlık alanları

> **Yapay zekâ asistanı hakkında:** Talep listesindeki *"opsiyonel yapay zekâ sohbet botu"* Faz 3'e aittir. Gerekçe: bir asistan, ancak sisteminizin verisiyle konuştuğunda değerlidir. Faz 1 o veriyi üretir. Boş bir kafayla konuşan bir asistan, yapay zekânın değerini göstermez — zayıflatır. **Faz 1'de asistanın bağlanacağı yer hazırlanır; asistanın kendisi Faz 3'te gelir.**

#### Çocuk ve Ebeveyn Alanı
- Veli hesabı altında birden çok çocuk profili
- Çocuğun katılım durumu
- Çocuğun antrenman gelişimi
- Sınav tarihleri
- Velilere yönelik bilgilendirme

> **Not:** Bu alan bir ek kolaylık değil, **sistemin kimlik mimarisinin bir parçasıdır.** "Tek giriş → birden çok üye profili" yapısı sonradan eklenemez; kök seviyede kurulur. Ayrıca ödeme yapan veli, antrenman yapan çocuktur — bu, Elite ile veli arasındaki tek doğrudan dijital kanaldır.

#### Kişisel Antrenman ve Rezerve Edilebilir Hizmetler
- Kişisel antrenman (PT) rezervasyonu
- Bireysel randevu oluşturma
- **Rezerve edilebilir hizmet akışı** — Elite yönetim panelinden hizmet tanımlar (ad, süre, kapasite, antrenör, ücret); üye uygulamadan rezerve eder

> **Yaklaşım:** Elite'in ne satacağına biz karar vermeyiz. Motoru kurarız, içeriği Elite doldurur. Yeni bir hizmet türü eklemek yeni bir inşa işi değil, yeni bir kayıttır.
>
> **Kapsam sınırı:** Sağlık verisi içeren hizmetler (fizyoterapi, beslenme danışmanlığı, sakatlık takibi) Faz 1 kapsamı dışındadır. Bunlar özel nitelikli kişisel veri kategorisine girer ve ayrı bir hukuki/teknik çerçeve gerektirir.

#### Ödeme ve Aidat Görünürlüğü
- Aidat durumu
- Fatura ve ödeme geçmişi

> **Not:** Bu yetenek talep listesinde yer almıyor; ancak üyenin uygulamada aidat durumunu görememesi kaçınılmaz olarak bir eksiklik olarak geri döner. Kapsama alınmıştır — **gerçekleşme koşulu için bkz. §5.6.**

#### Dijital Belgeler
- Rıza ve muvafakat beyanları
- Sorumluluk reddi beyanları
- Formlar
- Dijital imza

#### Motivasyon
Profilde görünen dijital başarımlar:
- 50 antrenman tamamlandı
- 100 antrenman tamamlandı
- Elite'te 1 yıl
- İlk sınav geçildi
- İlk seminere katılım
- Doğum günü

---

### 5.2 Modern Web Sitesi

Elite'i dışarıdan arayan insanın ilk temas noktası. Bugün statik bir tanıtım sayfası; yarın **çalışan bir kapı.**

- **Deneme dersi akışı** — online kayıt, takvimden yer seçimi
- **Canlı ders programı** — mobil uygulamayla aynı kaynaktan beslenir
- **Üyelik başvurusu ve dijital sözleşme**
- Seminer ve etkinlik kaydı
- Antrenör ve stüdyo tanıtımı
- İçerik alanı (blog / haberler)
- Almanca / İngilizce / Türkçe

> İnsanlar Elite'i internetten buluyor. Bulduktan sonra ne yapacaklarını bilmiyorlarsa, o ziyaret kaybolur. Web sitesi bir broşür değil, **kazanım kanalıdır.**

---

### 5.3 Yönetim Paneli

Talep listesinde yer almaz — ama listedeki her başlığın bir yöneteni olmak zorundadır. Haberi kim girer? Sınav takvimini kim açar? Kuşak terfisini kim işler? Semineri kim tanımlar? Hizmeti kim tanımlar?

Panel ayrı bir ürün değildir. **Uygulamanın kumanda odasıdır.**

- İçerik yönetimi (web + uygulama)
- Ders programı ve doluluk yönetimi
- Kuşak ve sınav yönetimi
- Seminer ve etkinlik tanımlama
- **Rezerve edilebilir hizmet tanımlama**
- Duyuru ve bildirim gönderimi
- Dijital sözleşme ve belge akışı takibi
- Üye gelişim görünümü

**Panel, mevcut sistemin işini tekrar etmez.** Üye kaydı, aidat, turnike, kasa mevcut sistemde kalır. Panel yalnızca bizim kurduğumuz katmanı yönetir.

---

### 5.4 Dövüş Sporu Katmanı

Bu katman, sistemi standart bir spor salonu yazılımından ayıran şeydir.

- **Kuşak sistemi** (Graduierung) ve seviye hiyerarşisi
- **Teknik listeleri** — kuşak seviyesine bağlı
- **Sınav planlaması** ve sınav günü akışı
- **Geçti / kaldı kaydı** ve kuşak geçmişi
- **Kuşak başına asgari antrenman kuralı**
- Sertifika

> Bugün bu bilgi hiçbir sistemde yaşamıyor. Antrenörlerin hafızasında ve kâğıt üzerinde duruyor. Bir üye kuşak atlamaya hazır mı — bu soru bugün sezgiyle cevaplanıyor. Yarın veriyle cevaplanacak.

Bu katman uygulamanın, panelin ve web sitesinin içinden geçer. Ayrı bir ekran değil, **sistemin omurgasına işlenmiş bir dildir.**

---

### 5.5 Dijital Sözleşme Akışı

**Bugün:** Kâğıt sözleşme → elle doldurma → imza → tarama → sisteme yükleme.

**Yarın:** Web sitesinden veya stüdyodaki tabletten dijital giriş → dijital imza → sisteme akış.

- Üyelik başvurusu (web + tablet)
- Dijital imza
- Sözleşme süresi takibi
- Bitiş yaklaşırken uyarı
- Yenileme ve iptal akışları

**Sözleşme bizim tarafımızda oluşur ve yönetilir.** Üyelik başvurusu Elite'in dijital yüzünden — web sitesinden veya stüdyodaki tabletten — başlar. Veri oradan mevcut sisteme akar. Yön tek yönlüdür: **bizden mevcut sisteme.**

*(Bu akışın teknik gerçekleşme koşulu için bkz. §5.6.)*

---

### 5.6 Mevcut Sisteme Bağlı Yetenekler

Dürüst olmak gerekirse: Faz 1'in bazı yetenekleri, mevcut sistemin **veri paylaşım koşullarına** bağlıdır. Bunu şimdiden açıkça söylüyoruz.

**Bu koşula bağlı yetenekler:**

| Yetenek | Neden bağlı |
|---|---|
| Dijital sözleşme akışının tahsilatla buluşması | Yeni üye verisi mevcut sisteme yazılmalı |
| Ödeme ve aidat görünürlüğü | Aidat verisi mevcut sistemde yaşıyor |
| Üyelik durumu senkronizasyonu | Üye kaydı mevcut sistemde tutuluyor |

**Üç senaryo, üç sonuç:**

| Senaryo | Sonuç |
|---|---|
| **A — Karşılıklı veri akışı mümkün** | Tam dijital akış. Üye kesintisiz deneyim yaşar; veri arka planda yerine ulaşır. *Hedeflenen.* |
| **B — Yalnızca toplu aktarım mümkün** | Yarı dijital. Veri toplanır, düzenli aralıklarla aktarılır. Gerçek zamanlı değil, ama kâğıttan ileri. |
| **C — Veri paylaşımı mümkün değil** | Dijital toplama + elle giriş. Üye yine dijital deneyim yaşar; aktarım Elite ekibince yapılır. Yine de bugünkü kâğıt süreçten ileridir. |

**Her üç senaryoda da Faz 1 teslim edilir.** Değişen, akışın ne kadarının otomatik olacağıdır — üyenin gördüğü deneyim değil.

> **Yerinde keşif konusu.** Bu, Faz 1'in en kritik açık sorusudur ve teklif öncesi netleşmelidir.

---

### Faz 1 — İş Sonucu

Faz 1 tamamlandığında:

- Üye Elite'i **telefonundan yaşar** — programı görür, derse kaydolur, gelişimini takip eder
- Yeni üye adayı **web sitesinden içeri girer** — deneme dersine kaydolur, üye olur
- Kuşak ve sınav sistemi **ilk kez bir sistemde yaşar**
- **Kâğıt sözleşme süreci biter**
- **Veli, çocuğunun gelişimini görür**
- Elite, üyesine **her gün ulaşabilecek bir kanala** sahip olur

Son madde, Faz 2'nin de ön koşuludur.

---

## 6. FAZ 2 — Online Shop

Mobil uygulamanın ticari bir kanala dönüştüğü faz.

Elite'in yaklaşık 900 aktif üyesi var. Bugün bu üyelere ulaşan dijital bir satış kanalı yok. Faz 1'de kurulan uygulama, bu kanalı mümkün kılar.

- Ürün kataloğu (merchandise, ekipman)
- Uygulama içinden satın alma
- Seminer bileti ve ek hizmet satışı
- Sipariş ve teslimat takibi

**Mimari gereklilik:** Ürün satışının ayrı bir tüzel yapı üzerinden yürüyecek olması, sistemin baştan **iki ayrı gelir ve muhasebe akışını** taşıyacak şekilde kurulmasını gerektirir. Üye tek bir uygulama görür; arka planda iki yapı doğru şekilde ayrışır. Bu, sonradan eklenebilecek bir düzenleme değildir — baştan kurulmalıdır.

**Durum:** Bu faz şu an belirsizdir. Mevcut bir dış çalışma sürüyor. Sonucu görüldükten sonra iki yol vardır: mevcut çalışma platforma bağlanır, ya da tek omurga üzerinde yeniden kurulur. Karar Elite'e aittir; her iki yolu da destekleriz.

---

## 7. FAZ 3 — Elite AI

Talep listesindeki *"opsiyonel yapay zekâ sohbet botu"* bu fazın küçük bir parçasıdır.

- **Üye Asistanı** — uygulamada, sınırlı yetkiyle
- **Destek Asistanı** — web sitesinde, ziyaretçiye
- **Yönetici Asistanı** — analiz ve içgörü
- **İletişim Asistanı** — gelen mesajlarda ilk temas

> Yapay zekâ her zaman **asistandır.** Nihai kararı insan verir.

Bu faz Faz 1'e bağlıdır: yapay zekânın konuşacağı bir üye, okuyacağı bir veri olmadan anlamı yoktur.

---

## 8. FAZ 4 — İletişim Merkezi

Tüm iletişim kanallarının tek ekranda toplandığı faz.

WhatsApp, Instagram, Facebook, TikTok, YouTube, e-posta, telefon, web formu — bugün her biri ayrı yerde, ayrı kişide, ayrı hafızada.

**Tek iletişim noktası:** hangi kanaldan gelirse gelsin, mesaj aynı yere düşer; cevap aynı yerden çıkar; geçmiş tek yerde durur.

---

## 9. FAZ 5 — Medya Kütüphanesi ve Sosyal Medya

Talep listesindeki *"Teknik ve Öğrenme Alanı"* bu fazın parçasıdır.

**Medya kütüphanesi:**
- Teknik videoları ve açıklamaları
- Kombinasyonlar
- Evde antrenman içerikleri
- Merkezî video arşivi

**Sosyal medya:**
- İçerik planlama ve yayınlama
- Çok platformlu yönetim
- Performans takibi

---

## 10. Neden Bu Sıra?

Faz 1 temeldir; gerisi onun üzerinde durur.

- **Uygulama olmadan**, yapay zekânın konuşacağı bir üye yoktur.
- **Uygulama olmadan**, shop'un satış yapacağı bir kanal yoktur.
- **Uygulama olmadan**, medya kütüphanesinin izleyicisi yoktur.
- **Uygulama olmadan**, iletişim merkezinin bağlanacağı bir üye kaydı yoktur.

Faz 2–5 birer **yön**dür, taahhüt değil. Elite hangisini, hangi sırayla isterse o şekilde ilerlenir.

Teklifimiz **yalnızca Faz 1** içindir.

---

## 11. Birlikte Netleştireceğimiz Konular

Aşağıdaki başlıklar Faz 1 kapsamına **henüz alınmamıştır.** Bunları Elite ile birlikte konuşup karara bağlayacağız.

### 11.1 Topluluk ve Antrenman Partneri (Talep 9)

Talep üç parça içeriyor: antrenman partneri bulma, üyeler arası açık grup sohbeti, topluluk işlevi.

**Antrenman partneri bulma** üzerinde hemfikiriz — bunu yapılandırılmış bir eşleştirme olarak kurabiliriz: kuşak seviyesi, kilo sınıfı, antrenman saatleri.

**Açık grup sohbeti** konusunda bir çekincemiz var ve bunu açıkça paylaşmak istiyoruz:

Elite'in uygulamasında çocuk üyeler var. Serbest ve açık bir grup sohbeti, Elite'i hukuken bir *barındırma sağlayıcısı* konumuna taşır ve üç yük getirir:

- **Sorumluluk:** Kullanıcı içeriğinden doğan hukuki sorumluluk Elite'e geçer.
- **Moderasyon:** Çocukların bulunduğu bir sohbet ortamı sürekli gözetim gerektirir. Bu, antrenörlerin işi olamaz.
- **Risk:** Yetişkinlerin ve çocukların serbestçe iletişim kurabildiği bir alan, taşınması gereken en ağır risktir.

**Önerimiz:** Sohbeti uygulamanın içine değil, üyelerin zaten kullandığı yere bırakalım. Uygulamadan mevcut gruplara bağlantı verelim. Topluluk hissini ise başka yollarla kuralım — kuşak terfilerinin görünürlüğü, başarımlar, etkinlik katılımcı listeleri, derse kayıtlı kişi sayısı.

**Bu bir ret değil, bir koruma önerisidir.** Karar Elite'e aittir; birlikte konuşacağız.

---

---

# EK — AÇIK KONULAR

> **Bu bölüm çalışma sürümüne aittir. Müşteri sürümünde yer almaz.**

## A. Kapsam kararları

| # | Konu | Durum | Karar |
|---|---|---|---|
| A1 | **Topluluk / açık grup sohbeti** (Talep 9) | 🔄 **Müzakerede** | Faz 1'e alınmadı. Pozisyonumuz §11.1'de yazılı. Müşteriyle görüşülüp karara bağlanacak. |
| A2 | **Antrenman partneri arama** (Talep 9) | 🔄 **Müzakerede** | A1 ile birlikte masaya konacak. Riski yok; teknik olarak Faz 1'e girebilir. |
| A3 | **"Ek hizmetler"** (Talep 11) | ✅ **KAPANDI** | Jenerik **rezerve edilebilir hizmet akışı** kuruldu (§5.1, §5.3). Elite hizmeti tanımlar, üye rezerve eder. **Sağlık verisi içeren hizmetler kapsam dışı.** |
| A4 | **Ödeme / aidat görünürlüğü** | ✅ **KAPANDI** | Kapsama alındı, **koşullu** (§5.6). Ayrıca müşteriye "listede olmaması bilinçli miydi?" sorulacak. |
| A5 | **Çocuk / ebeveyn alanı** | ✅ **KAPANDI** | **Faz 1 çekirdeği** — orandan bağımsız. Kimlik mimarisi kararı; sonradan eklenemez. 16 yaş altı için veli onayı yasal gereklilik olabilir (hukukçuya doğrulatılacak). Oran yine de sorulacak (ROI + uyum). |
| A6 | **AI sohbet botu** | ✅ **KAPANDI** | **Faz 3'te kalır.** Faz 1'de yalnızca bağlantı noktası hazırlanır. Gerekçe §5.1'de yazılı. |

## B. Yerinde keşifte doğrulanacaklar

| # | Konu | Neden önemli |
|---|---|---|
| B1 | **Mevcut sistemin veri erişim / API politikası** | §5.6'nın tamamı buna bağlı. **En kritik açık soru.** Teklif öncesi netleşmeli. |
| B2 | Muhasebe aktarımı gerçekten aktif mi? | Mevcut sistemde bu yetenek var; Elite habersiz görünüyor. Ayrı iş olarak satılmaz — **birlikte aktive edilir** (güven hamlesi). |
| B3 | Ders/kurs yönetimi gerçekten zayıf mı, yoksa kullanılmıyor mu? | Kapsamı doğrudan etkiler. |
| B4 | Mevcut uygulamanın gerçekte hangi yetenekleri açık? | Talep listesinin bir kısmı zaten mevcut olabilir. |
| B5 | Aile hesabı mevcut sistemde var mı? | Çocuk/ebeveyn alanının mimarisini etkiler. |
| B6 | Sözleşme sürelerinin bugün nasıl takip edildiği | Dijital sözleşme akışının tasarımını etkiler. |
| B7 | **Çocuk üye oranı ve yaş dağılımı** | ROI hikayesi + 16 yaş altı uyum yükümlülüğü. |
| B8 | **Ödeme görünürlüğü listede neden yok?** | Bilinçli mi, unutuldu mu? |

## C. Talep listesi izlenebilirlik

| Talep # | Başlık | Yerleştiği yer |
|---|---|---|
| 1 | Kişisel üye profili + kuşak | Faz 1 — 5.1 / 5.4 |
| 2 | Antrenman planı ve ders kaydı | Faz 1 — 5.1 |
| 3 | Katılım ve antrenman geçmişi | Faz 1 — 5.1 |
| 4 | Haberler ve push bildirimleri | Faz 1 — 5.1 |
| 5 | Seminerler ve etkinlikler | Faz 1 — 5.1 |
| 6 | Sınav sistemi ve gelişim | Faz 1 — 5.1 / 5.4 |
| 7 | Antrenör profilleri | Faz 1 — 5.1 |
| 7b | *Opsiyonel AI sohbet botu* | **Faz 3** ✅ |
| 8 | Çocuk ve ebeveyn alanı | Faz 1 — 5.1 ✅ **çekirdek** |
| 9 | Topluluk / grup sohbeti | **§11.1 — müzakerede** 🔄 |
| 10 | *(Teknik ve öğrenme alanı)* | **Faz 5** |
| 11 | Kişisel antrenman + ek hizmetler | Faz 1 — 5.1 ✅ **rezerve edilebilir hizmet akışı** |
| 12 | Dijital doküman yönetimi | Faz 1 — 5.1 / 5.5 |
| 13 | Shop bağlantısı | **Faz 2** |
| 14 | Motivasyon / başarımlar | Faz 1 — 5.1 |

## D. Soluty'nin eklediği, talep listesinde olmayan

| Kapsam | Gerekçe |
|---|---|
| **Yönetim paneli** | 14 maddenin hepsinin bir yöneteni olmalı. Zorunlu. |
| **Modern web sitesi** | Müşteri sözlü olarak "can alıcı" dedi. Kazanım kanalı. |
| **Deneme dersi akışı** | Bugünkü en zayıf nokta. |
| **Dijital sözleşme (kazanım tarafı)** | Kâğıt süreç bitiyor. |
| **Ödeme / aidat görünürlüğü** | Listede yok ama eksikliği geri döner. Koşullu. |

## E. Dil ve terminoloji kontrol listesi (Almanca sürüm öncesi)

- ❌ Yasaklı: *Code, Programmierung, Entwickler, Feature, Modul, "App entwickeln"*
- ✅ Tercih: *Plattform, System, Katman, Bileşen, Akış, Yetenek, Aufbauen, Verbinden*
- ❌ "Sahip" **hiçbir yerde kullanılmaz** → *yönetici* / *Geschäftsführer* / *Leitung*
- ❌ Süre ve maliyet bilgisi müşteri sürümünde **yer almaz**
- ⚠️ Mevcut sistemin adının müşteri belgesinde nasıl anılacağı **onaya tabidir** (Project Instructions: rakip adı geçirmek iki aşamalı onay gerektirir)
- ⚠️ §11.1'deki hukuki çerçeve (barındırma sağlayıcısı sorumluluğu, DSGVO/DSA) müşteri sürümünden önce **hukukçuya doğrulatılmalıdır**
- ⚠️ §5.1'deki 16 yaş altı veli onayı iddiası da **hukukçuya doğrulatılmalıdır**
- ✅ Yapay zekâ her zaman "asistan"; nihai karar insanda

---

*Belge sonu — v2.1 ÇALIŞMA DRAFT*
