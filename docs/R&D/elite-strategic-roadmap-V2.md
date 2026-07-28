# Elite Kickboxing — Stratejik Yol Haritası

**Sürüm:** 2.8 — **ÇALIŞMA DRAFT (Türkçe)**
**Tarih:** 28 Temmuz 2026
**Hazırlayan:** Soluty GmbH
**Durum:** İç çalışma sürümü. Müşteri sürümü Almanca (formal *Sie*) olarak ayrıca hazırlanacaktır.

> v1 (`elite-strategic-roadmap.md`) arşiv olarak korunur.
> **v2.1–2.5:** Kapsam kararları, ticari akış, devreye alma, müşteri cevapları.
> **v2.6:** ⚠️ **STRATEJİK KARAR — Faz 1 dış sistem bağımlılığı içermez (§5.6 yeniden yazıldı).** Faz 2 online shop tam kapsamla tanımlandı (§6).
> **v2.7:** Talep listesi madde madde karşılandı. Belge iki seviyeli hâle getirildi: **net kapsam** ve **tartışma konuları** (§11). Açık grup sohbeti, basit video, basit yapay zekâ asistanı ve online shop tartışma listesine alındı.
> **v2.8:** EK-H eklendi — özellik dışı iş kalemleri (17 kategori). Kaynak: docs/R&D/research/non-feature-workload-research-raw.md
>
> *EK* bölümü yalnızca çalışma sürümüne aittir; müşteri sürümünde yer almaz.

---

## 1. Yönetici Özeti

Elite bugün çalışan bir operasyonel omurgaya sahip. Üyelik, aidat tahsilatı, giriş kontrolü, dolap ve kasa süreçleri mevcut sistem üzerinde yürüyor — ve yürümeye devam edecek.

Eksik olan omurga değil. Eksik olan **üyenin gördüğü yüz** — ve o yüz üzerinden akabilecek gelir.

Bugün Elite'in üyesi, Elite'i telefonundan yaşayamıyor. Elite'i dışarıdan arayan biri, web sitesinden içeri giremiyor. Seminerine katılmak isteyen biri, bunu online yapamıyor. Ve Elite'i Elite yapan şey — kuşak, sınav, teknik gelişim — hiçbir sistemde yaşamıyor.

Kurmayı önerdiğimiz şey budur: **üye ile Elite arasındaki dijital köprü**, üzerinde dövüş sporunun kendi dili, ve köprüden akabilen **gelir.**

---

## 2. Başlangıç Noktası

### Çalışan taraf

Üye kayıtları ve üyelik durumu · Aidat tahsilatı (SEPA) ve ihtar akışı · Turnike ile giriş kontrolü, kart ile dolap kilitleme · Kasa, ürün ve stok · Muhasebe verisi aktarımı

Bunlar çalışıyor. **Bunlara dokunmuyoruz.**

### Eksik taraf

| Alan | Bugünkü durum |
|---|---|
| **Üye deneyimi** | Üyenin Elite ile dijital teması yok denecek kadar zayıf |
| **Dış dünya yüzü** | Web sitesi statik; deneme dersi ve ders programı akışı işlemiyor |
| **Dövüş sporu derinliği** | Kuşak, sınav, teknik gelişim hiçbir sistemde tutulmuyor |
| **Sözleşme süreci** | Kâğıt doldurma → imza → tarama → sisteme yükleme |
| **Aidat dışı gelir** | Seminer, etkinlik, kişisel antrenman ve ürün için dijital satış kanalı yok |

---

## 3. Yaklaşımımız — Neyi *Yapmıyoruz*

Bir yol haritasının değeri, ne yapacağı kadar **ne yapmayacağıyla** ölçülür.

Mevcut sisteminizde çalışan hiçbir süreci yeniden kurmuyoruz. Çalışan bir omurganın üzerine ikinci bir omurga koymak size maliyet ve risk getirir; değer getirmez.

**Mevcut sistemde kalır:** Üye kayıtları ve durum yönetimi · Aidat tahsilatı, SEPA, ihtar · Turnike, kapı, dolap donanımı · Kasa, ürün, stok · Muhasebe aktarımı

**Biz kurarız:** Üyenin yüzü (mobil uygulama) · Dış dünyanın yüzü (web sitesi) · Elite'i Elite yapan katman (kuşak, sınav, gelişim) · Dijital sözleşme akışı — kuruluş, yenileme ve fesih dahil · **Aidat dışı gelirin aktığı ticari akış** · Bunları yöneten kumanda odası

İki sistem birbirinin yerine geçmez. **Birbirini tamamlar.**

---

## 4. Yol Haritası

| Faz | Ad | Odak |
|---|---|---|
| **Faz 1** | **Dijital Üye Deneyimi Omurgası** | Mobil uygulama + web sitesi + yönetim paneli + dövüş sporu katmanı + ticari akış |
| Faz 2 | **Online Shop** | Ürün satışının platforma alınması — mobil + web |
| Faz 3 | Elite AI | Yapay zekâ destekli asistanlar |
| Faz 4 | İletişim Merkezi | Tüm kanalların tek noktada toplanması |
| Faz 5 | Medya Kütüphanesi ve Sosyal Medya | Video arşivi + sosyal medya operasyonu |

**Faz 1 temeldir.** Faz 2–5 yönü gösterir, taahhüt oluşturmaz.

---

## 5. FAZ 1 — Dijital Üye Deneyimi Omurgası

Faz 1, **tek bir sistemin üç yüzüdür.** Üç ayrı ürün değil; aynı omurganın üç ekranda görünen hâli. Ders programı bir yerde değişir — her yerde değişir.

Üç yüzün içinden geçen bir katman vardır: **dövüş sporu katmanı.**

---

### 5.1 Üye Mobil Uygulaması

Elite'in en önemli önceliği. Üyenin cebindeki Elite.

**Profil ve Gelişim** — Kişisel bilgiler · Üyelik durumu · **Kuşak derecesi** · Üyelik başlangıcı · Gelişim çizgisi

**Antrenman Planı ve Ders Kaydı** — Ders programı · Derse kayıt · Doluluk göstergesi · Otomatik hatırlatmalar

**Katılım ve Antrenman Geçmişi** — **Ders bazlı antrenman kaydı** · Katılım geçmişi · Antrenman istatistiği

> **Neden ders bazlı kayıt, turnike varken?** Fiziksel giriş-çıkış ve dolap kilit sistemi mevcut sistemde kalır — buna dokunmuyoruz. Ama turnike *binaya girişi* kaydeder; kuşak sistemi *hangi antrenmana katıldığını* bilmek zorundadır. "Bu kuşağa geçmek için X antrenman" kuralı ancak ders bazlı kayıtla çalışır.
> Bu kayıt antrenör tarafından işaretlenebilir, ya da üye tarafından uygulama üzerinden bildirilebilir. Turnikenin yerine geçmez — kuşak sisteminin ihtiyaç duyduğu farklı bir bilgiyi üretir.

**Haberler ve Bildirimler** — Kapalı günler · İptal edilen dersler · Duyurular · **Push** · **Doğum günü ve özel gün kutlamaları**

**Seminerler ve Etkinlikler** — Liste · Antrenör ve içerik bilgisi · **Kayıt ve bilet satışı** *(§5.7)* · Takvim

**Sınav Sistemi ve Teknikler** — Sınav takvimi · Sınava kayıt · Kuşak ilerlemesi · **Kuşağa bağlı teknik listesi** *(§5.4)*

**Antrenör Profilleri** — Tanıtımlar ve uzmanlık alanları

**Topluluk ve Antrenman Partneri** — Yapılandırılmış antrenman partneri eşleştirme: kuşak seviyesi, kilo sınıfı, antrenman saatleri

> Açık grup sohbeti bu kapsamın dışındadır ve birlikte karar verilecek konular arasındadır *(§11.B)*.

> **Yapay zekâ asistanı:** Talep listesindeki *"opsiyonel yapay zekâ sohbet botu"* için iki yol vardır: sık sorulan sorulara cevap veren **basit bir asistan Faz 1'de** kurulabilir; ya da sisteminizin verisiyle konuşan **kapsamlı asistanlar Faz 3'te** gelir. Bu iki yol arasındaki tercih birlikte yapılacaktır *(§11.B)*.

**Çocuk ve Ebeveyn Alanı** — Veli hesabı + çoklu çocuk profili · Çocuğun katılımı · Gelişimi · Sınav tarihleri

> Bu alan bir kolaylık değil, **kimlik mimarisinin parçasıdır.** "Tek giriş → birden çok profil" sonradan eklenemez. Ayrıca ödeme yapan veli, antrenman yapan çocuktur.

**Kişisel Antrenman ve Rezerve Edilebilir Hizmetler** — PT rezervasyonu · Bireysel randevu · **Hizmet rezervasyon ve ödeme akışı** *(§5.7)*

> Elite'in ne satacağına biz karar vermeyiz. Motoru kurarız, içeriği Elite doldurur.
> **Kapsam sınırı:** Sağlık verisi içeren hizmetler (fizyoterapi, beslenme) Faz 1 dışıdır.

**Üyelik ve Sözleşme Bilgileri** — Sözleşme durumu · Süre ve bitiş tarihi · Yenileme · Fesih talebi *(§5.5)*

**Dijital Belgeler** — Rıza beyanları · Feragatnameler · Formlar · Dijital imza

**Motivasyon** — 50/100 antrenman · 1 yıl · İlk sınav · İlk seminer · Doğum günü

---

### 5.2 Modern Web Sitesi

Bugün statik bir tanıtım sayfası; yarın **çalışan bir kapı.**

- **Deneme dersi akışı** — online kayıt
- **Canlı ders programı** — uygulamayla aynı kaynaktan
- **Üyelik başvurusu ve dijital sözleşme**
- **Seminer ve etkinlik kaydı — online ödeme dahil** *(§5.7)*
- Antrenör ve stüdyo tanıtımı · Blog / haberler
- Almanca / İngilizce / Türkçe

> İnsanlar Elite'i internetten buluyor. Ne yapacaklarını bilmiyorlarsa o ziyaret kaybolur. Web sitesi bir broşür değil, **kazanım kanalıdır.**

---

### 5.3 Yönetim Paneli

Her başlığın bir yöneteni olmak zorundadır. Haberi kim girer? Sınav takvimini kim açar? Kuşak terfisini kim işler? Bileti kim satar?

Panel ayrı bir ürün değildir. **Uygulamanın kumanda odasıdır.**

İçerik yönetimi (web + app) · Ders programı ve doluluk · Kuşak ve sınav yönetimi · Teknik tanımlama · Seminer, etkinlik ve **bilet** tanımlama · Rezerve edilebilir hizmet tanımlama · **Satış, ödeme ve iade takibi** *(§5.7)* · Duyuru ve bildirim · **Dijital sözleşme, yenileme ve fesih takibi** · Üye gelişim görünümü

**Panel, mevcut sistemin işini tekrar etmez.**

---

### 5.4 Dövüş Sporu Katmanı

Sistemi standart bir spor salonu yazılımından ayıran katman.

- **Kuşak sistemi** (Graduierung) ve seviye hiyerarşisi
- **Teknik listeleri** — kuşak seviyesine bağlı
- **Teknik videoları** — her tekniğe bir video bağlantısı iliştirilebilir
- **Sınav planlaması** ve sınav günü akışı
- **Geçti / kaldı kaydı** ve kuşak geçmişi
- **Kuşak başına asgari antrenman kuralı**
- Sertifika

> Bugün bu bilgi hiçbir sistemde yaşamıyor. Antrenörlerin hafızasında ve kâğıtta duruyor. Bir üye kuşak atlamaya hazır mı — bugün sezgiyle cevaplanıyor. Yarın veriyle.

**Teknik videoları:** Kuşağa bağlı **teknik listeleri** Faz 1'in parçasıdır. Bu tekniklere **video eklenmesi** — panelden yükleme, depolama ve uygulamada oynatma — birlikte karar verilecek konular arasındadır *(§11.B)*.

Kapsamlı medya yönetimi (merkezî arşiv, etiketleme, arama, izlenme analitiği, evde antrenman **programları**) Faz 5'e aittir.

> **Zarif bozulma:** Video, tekniğin **opsiyonel** niteliğidir. Elite on video hazırlarsa on teknikte video görünür; kalanında yalnızca metin. **"Yakında" ekranı yok, boş bölüm yok.**

---

### 5.5 Dijital Sözleşme Akışı

**Bugün:** Kâğıt → elle doldurma → imza → tarama → yükleme.
**Yarın:** Web veya tabletten dijital giriş → dijital imza → sisteme akış.

Üyelik başvurusu (web + tablet) · Dijital imza · Sözleşme süresi ve bitiş tarihi takibi · Bitiş uyarısı · **Yenileme akışı** · **Fesih (Kündigung) akışı**

**Sözleşme bizim tarafımızda oluşur ve yönetilir.** Üye, üyelik durumunu ve sözleşme bilgilerini yönetebildiği tek yer bizim uygulamamızdır — çünkü üyenin doğrudan erişebildiği tek arayüz odur.

> Bu yalnızca kâğıdı dijitale taşımak değildir. Üyelik kararı çoğu zaman salonda değil, akşam evde verilir. O anda kâğıt form doldurmaya gelmesi gereken kişi, çoğu zaman hiç gelmez. **Dijital sözleşme bir kâğıt işi değil, bir dönüşüm adımıdır.**

#### Fesih (Kündigung) — üyenin tek temas noktası

Üye uygulamayı kullanıyor, üyeliğini bizim sistemimizden başlatıyor. Aynı mantıkla, **fesih talebi de bizim sistemimizden başlar** — üyenin erişebildiği tek arayüz burasıdır.

Fesih talebi kaydedilir, belgelenir ve Elite'in yönetim paneline düşer. İlgili tahsilat kaydının durdurulması, mevcut sistem üzerinde Elite ekibi tarafından işlenir.

---

### 5.6 ⭐ Faz 1'in Temel İlkesi — Bağımsız Teslim

Faz 1, **hiçbir dış sisteme bağımlı olmadan** kurulur ve teslim edilir.

Bu bilinçli ve merkezî bir karardır. Nedeni basittir: **bir projenin en büyük gecikme sebebi, başka bir tarafın takvimidir.**

Bir sistem başka bir sisteme bağlanacaksa; o sistemin sahibinin yanıt vermesi, erişim açması, teknik dokümantasyon sağlaması, test ortamı vermesi ve değişiklik taleplerine cevap vermesi gerekir. Bunların hiçbiri bizim kontrolümüzde değildir. Ve bunlardan biri gecikirse, **tüm proje gecikir** — üstelik gecikmenin sebebi sizin göremediğiniz bir yerde olur.

**Bu yüzden Faz 1'de:**

- Mevcut üyelik sisteminizle **canlı veri bağlantısı kurmuyoruz**
- Harici bir tedarikçinin sistemiyle **entegrasyon kurmuyoruz**
- Hiçbir yeteneğimiz, üçüncü bir tarafın izin vermesine bağlı değildir

**Peki veri nasıl akacak?**

| Konu | Faz 1'deki çözüm |
|---|---|
| Mevcut ~900 üyenin sisteme alınması | **Tek seferlik veri aktarımı** — Elite'in kendi verisinin dışa aktarılmasıyla *(§5.8)* |
| Yeni üye kaydının mevcut sisteme geçmesi | Yönetim panelinde **hazır formatlanmış aktarım listesi**; Elite ekibi işler |
| Fesih talebinin tahsilatı durdurması | Aynı şekilde — panelde görünür, Elite ekibi işler |
| Üyelik durumu değişiklikleri | Panelden işaretlenir |

> **Tek seferlik veri aktarımı bir entegrasyon değildir.** Entegrasyon, iki sistemin sürekli birbirine bağlı kalması demektir — ve bağımlılık oradan doğar. Veri aktarımı ise sizin kendi verinizin bir kez taşınmasıdır.

**Sonraki adımda ne olur?**

Faz 1 tamamlandıktan ve sistem sağlıklı çalıştıktan sonra, mevcut sisteminizle canlı bağlantı kurmak isterseniz bu **ayrı bir çalışma olarak** planlanır. O noktada elimizde çalışan bir sistem olur; bağlantı bir iyileştirme olur, bir risk değil.

**Kazancınız:** Faz 1'in teslim tarihi yalnızca bize bağlıdır. Bekleyecek kimse yok, izin isteyecek kimse yok, gecikecek kimse yok.

---

### 5.7 Ödeme ve Ticari Akışlar

Aidat tahsilatı mevcut sistemde kalır — orada iyi çalışıyor.

Ama Elite'in geliri yalnızca aidattan ibaret değil: seminer, etkinlik, kişisel antrenman, ek hizmetler — ve ileride ürün. **Bunlar mevcut sistemin yapabileceği şeyler değil.**

**Faz 1'de kurulur:**
- Kart ile online ödeme
- **Üye ve üye olmayan (misafir) katılımcı** ödemesi
- Seminer ve etkinlik bileti
- Kişisel antrenman ve hizmet ödemesi
- Fatura ve makbuz *(GoBD uyumlu)* ⚖️
- İptal ve iade akışı
- Satış ve gelir raporlaması

**İki tüzel yapı — baştan kurulur.** Elite'in **hizmet gelirleri** ile **ürün gelirleri** farklı tüzel yapılar üzerinden yürüyecek. Üye tek bir uygulama görür; gelir arka planda doğru yapıya yazılır, doğru fatura kesilir.
**Bu sonradan eklenebilecek bir düzenleme değildir.** Faz 1'de tek yapı kullanılsa bile mimari iki yapıyı taşımaya hazır kurulur.

**Para akışı.** Ödeme altyapısı **Elite'in kendi adına** kurulur. Para doğrudan Elite'e akar. **Soluty akışı yönetir, paraya dokunmaz.**

**Elite ile temas eden herkes.** Bir kişi üye olmadan da temas edebilir — seminere katılır, ürün alır. Bu kişiler tek seferlik işlem olarak görülmez; sistemde tanınır ve zamanla üyeliğe dönüşebilir. **Seminer katılımcısı, yarının üyesidir.**

> Bu ticari akış, Faz 2'nin de temelidir. Ürün satışı geldiğinde yeni bir ödeme altyapısı kurulmaz — **kurulu olan genişletilir.**

---

### 5.8 Devreye Alma — Mevcut Üyelerin Sisteme Taşınması

Yeni bir sistem kurmak yetmez. **Mevcut ~900 üyenin o sisteme taşınması gerekir.**

Bu, projelerin en çok hafife alınan parçasıdır — ve Faz 1'in iş sonucu buna bağlıdır. Uygulama ne kadar iyi olursa olsun, **üyenin telefonunda değilse değer üretmez.**

**1. Veri aktarımı**
Mevcut sistemdeki üye kayıtları yeni platforma taşınır: kişi bilgileri, üyelik durumu, başlangıç tarihleri, sözleşme arşivi.
Aktarım öncesi **veri temizliği** yapılır — yıllar içinde biriken tekrar kayıtlar, eksik bilgiler, güncel olmayan adresler.
**Veli–çocuk ilişkileri yeniden kurulur.**

**2. Kuşak verisinin oluşturulması**
Kuşak bilgisi bugün **hiçbir sistemde yok** — antrenörlerin bilgisinde ve kâğıtta.
Bu veri **sıfırdan üretilir.** Soluty toplu giriş aracını hazırlar; kuşak bilgisini Elite'in antrenörleri girer.

**3. Üyelerin uygulamaya alınması**
900 üyenin uygulamayı indirmesi, hesabını doğrulaması ve kullanmaya başlaması gerekir.
- Davet ve aktivasyon akışı
- **Kimlik doğrulama** — hesabın doğru kişiye gitmesi
- **Veli hesaplarının çocuk profilleriyle eşleştirilmesi**
- Devreye alma kampanyası ve üye desteği

> **Bu son madde projenin iş sonucunu doğrudan belirler.** Uygulamadan ürün satışı, seminer bileti ve üye iletişimi — hepsi kaç üyenin uygulamada olduğuna bağlıdır.
> **Devreye alma teknik bir adım değil, ticari bir adımdır.** Birlikte yürütülür.

---

### Faz 1 — İş Sonucu

- Üye Elite'i **telefonundan yaşar**
- Yeni üye adayı **web sitesinden içeri girer**
- Kuşak ve sınav sistemi **ilk kez bir sistemde yaşar**
- **Kâğıt sözleşme süreci biter** — kuruluş, yenileme ve fesih dahil
- **Veli, çocuğunun gelişimini görür**
- **Elite aidat dışında da gelir toplayabilir**
- Elite, üyesine **her gün ulaşabilecek bir kanala** sahip olur

Son iki madde Faz 2'nin de ön koşuludur.

---

## 6. FAZ 2 — Online Shop

### 6.1 Durum

Elite'in ürün satışı bugün ayrı bir tedarikçi tarafından yürütülüyor ve henüz devreye alınmadı. Aynı zamanda Elite, üyelerin **mobil uygulamadan** ürün satın alabilmesini istiyor.

Bu iki hedef aynı anda karşılanabilir — ama nasıl yapıldığı büyük fark yaratır.

### 6.2 Önerimiz

**Ürün satışını da platformun bir parçası olarak kuralım — mobil uygulama ve web, tek sistem.**

Neden: Faz 1'de zaten kurulmuş olacak olanlar tekrar kurulmaz.

| Faz 1'de kurulan | Faz 2'de tekrar kurulur mu? |
|---|---|
| Kart ile online ödeme | ❌ Hayır — hazır |
| İki tüzel yapı gelir ayrımı ⚖️ | ❌ Hayır — hazır |
| Fatura ve makbuz (GoBD) | ❌ Hayır — hazır |
| İade akışı | ❌ Hayır — hazır |
| Üye kimliği ve giriş | ❌ Hayır — hazır |
| Bildirim kanalı (push) | ❌ Hayır — hazır |
| Web sitesi altyapısı | ❌ Hayır — hazır |

Ayrı bir tedarikçi bunların **hepsini ikinci kez** kurmak zorundadır — özellikle **iki tüzel yapı üzerinden gelir ayrımını**, ki bu Elite'e özgü bir gerekliliktir.

### 6.3 Neden Elite için farklı olur

Bir ürün satışı sisteminin değeri, sadece "satın al" düğmesi değildir. Asıl değer, **kimin satın aldığını bilmektir.**

Platformun içinde üyenin kuşağı, antrenman geçmişi, sınav takvimi, çocuk mu yetişkin mi olduğu zaten bilinir. Dışarıdaki bir mağaza için her ziyaretçi bir yabancıdır.

**Bunun getirdikleri:**

- **Üyeye özel fiyat** — üyeye farklı, dışarıya farklı. Harici bir mağaza kimin üye olduğunu bilemez.
- **Doğru zamanda doğru ürün** — "Sınavına altı hafta kaldı, bu koruyucu gerekli." Bu bir reklam değil, bir hatırlatmadır.
- **Veliye ulaşmak** — çocuğun ekipmanı küçüldü; veli zaten uygulamada.
- **Bildirim = satış kanalı** — yeni koleksiyon, sezon indirimi, seminer ürünleri. Harici bir mağazanın 900 kişiye ulaşma yolu yoktur.
- **Üyelikle birlikte satış** — yeni üye kaydında başlangıç seti; seminer kaydında ekipman paketi.

### 6.4 Salondan teslim — en büyük avantaj

Elite'in müşterisi zaten haftada birkaç kez binaya geliyor.

**Uygulamadan sipariş → resepsiyondan teslim.**

- Kargo maliyeti yok
- Teslimat gecikmesi ve kayıp riski yok
- İade basit — elden alınır
- **Teslim anı bir temas anıdır** — ek satış fırsatı

Kargo ile gönderim de mümkündür; ama Elite için varsayılan olması gereken **salondan teslimdir.** Bu, bir spor salonunun sahip olduğu ve normal bir mağazanın sahip olmadığı bir avantajdır.

### 6.5 Kapsam

**Ürün ve katalog** — Kategoriler, ürün varyantları (beden, renk), görseller, stok takibi
**Satış kanalları** — Mobil uygulama ve web, **aynı katalog ve aynı stok**
**Sipariş** — Sepet, ödeme, sipariş durumu, teslim/kargo takibi
**Yasal** ⚖️ — Cayma hakkı (14 gün), iade akışı, fiyat gösterimi, ⚖️ **iki tüzel yapı için doğru fatura ve vergi akışı**
**Özel satış biçimleri** — Ön sipariş ve toplu sipariş (kulüp tişörtü, takım forması: üretimden önce sipariş toplama, ölü stok riski yok) · Paket satış · Seminer ve etkinlik ürünleri

### 6.6 Önermediğimiz: pazaryerleri

Amazon, eBay gibi pazaryerlerine ürün koymayı **önermiyoruz.**

Elite jenerik ekipman satmıyor — **kendi markasını** satıyor. Pazaryerlerinde büyük markalarla fiyat üzerinden rekabet edilir; Elite'in orada bir avantajı yoktur. Buna karşılık pazaryerleri sürekli operasyonel yük getirir: sipariş süreleri, iade oranları, hesap kuralları, komisyonlar.

Daha önemlisi: **pazaryeri yeni müşteri bulmak içindir. Elite'in müşterisi zaten var — 900 kişi, her hafta binaya geliyor.** Asıl fırsat dışarıda değil, içeride.

### 6.7 Eğer harici çalışma devam ederse

Karar Elite'e aittir. Harici tedarikçinin çalışması tamamlanır ve devam edilmek istenirse, **Faz 1 sonrasında** mobil uygulama ile o sistem arasında bir bağlantı kurulması **ayrı bir çalışma olarak** planlanabilir.

Bunun bir ön koşulu vardır: bağlanılacak sistemin **çalışır ve belgelenmiş bir teknik arayüzü olması.** Bu görülmeden bağlantı taahhüt edilemez.

> Bu yüzden Faz 1'e böyle bir bağlantı **konulmamıştır** — bkz. §5.6.

---

## 7. FAZ 3 — Elite AI

**Üye Asistanı** (uygulamada, sınırlı yetkiyle) · **Destek Asistanı** (web, ziyaretçiye) · **Yönetici Asistanı** (analiz) · **İletişim Asistanı**

> Yapay zekâ her zaman **asistandır.** Nihai kararı insan verir.

Faz 1'e bağlıdır: yapay zekânın konuşacağı bir üye, okuyacağı bir veri olmadan anlamı yoktur.

---

## 8. FAZ 4 — İletişim Merkezi

WhatsApp, Instagram, Facebook, TikTok, YouTube, e-posta, telefon, web formu — bugün her biri ayrı yerde, ayrı kişide, ayrı hafızada.

**Tek iletişim noktası:** hangi kanaldan gelirse gelsin mesaj aynı yere düşer; cevap aynı yerden çıkar; geçmiş tek yerde durur.

---

## 9. FAZ 5 — Medya Kütüphanesi ve Sosyal Medya

Videoların basit hâlde gösterimi birlikte karar verilecek konular arasındadır *(§11.B)*. Faz 5'te video **bir varlık olarak yönetilir.**

**Medya kütüphanesi:** Yükleme, işleme, barındırma · Merkezî arşiv, etiketleme, arama · İzlenme analitiği
**Öğrenme alanı:** Kombinasyonlar · **Evde antrenman programları**
**Sosyal medya:** İçerik planlama · Çok platformlu yönetim · Performans takibi

---

## 10. Neden Bu Sıra?

- **Uygulama olmadan**, yapay zekânın konuşacağı bir üye yoktur.
- **Ticari akış olmadan**, shop'un para toplayacağı bir ray yoktur.
- **Uygulama olmadan**, medya kütüphanesinin izleyicisi yoktur.
- **Uygulama olmadan**, iletişim merkezinin bağlanacağı bir üye kaydı yoktur.

Teklifimiz **yalnızca Faz 1** içindir.

---

## 11. Kapsam Mutabakatı — Net Konular ve Tartışma Konuları

Elite'in ilettiği talep listesinin madde madde karşılığıdır. İki seviyelidir: **kapsamı net olan konular** ve **birlikte karar vereceğimiz konular.** Bu ayrım, kapsam toplantısında her maddenin ayrı ayrı konuşulabilmesi içindir.

### 11.A Net Kapsam

| # | Talep | Karşılık |
|---|---|---|
| 1 | Üye profili, kuşak, gelişim | Tam karşılanıyor — §5.1 / §5.4 |
| 2 | Ders programı ve kurs kaydı | Tam karşılanıyor — §5.1 |
| 3 | Katılım ve antrenman geçmişi | Karşılanıyor — §5.1 *(yöntem: aşağıdaki not)* |
| 4 | Haberler ve bildirimler | Tam karşılanıyor + doğum günü ve özel gün kutlamaları — §5.1 |
| 5 | Seminerler ve etkinlikler | Tam karşılanıyor — bilet ve ödeme dahil — §5.1 / §5.7 |
| 6 | Sınav sistemi ve gelişim | Tam karşılanıyor + kuşağa bağlı teknik listeleri — §5.1 / §5.4 |
| 7 | Antrenör profilleri | Tam karşılanıyor — §5.1 |
| 8 | Çocuk ve ebeveyn alanı | Tam karşılanıyor — kimlik mimarisinin çekirdeği — §5.1 |
| 9a | Antrenman partneri bulma | Tam karşılanıyor — yapılandırılmış eşleştirme — §5.1 |
| 11 | Kişisel antrenman ve ek hizmetler | Tam karşılanıyor — §5.1 / §5.7 |
| 12 | Dijital doküman yönetimi | Tam karşılanıyor — §5.1 / §5.5 |
| 14 | Motivasyon ve dijital başarımlar | Tam karşılanıyor — §5.1 |

**Madde 3 — katılım kaydı yöntemi.** Katılım iki yoldan işaretlenir: **antrenör ders sonunda katılımcıları işaretler**, ya da **üye uygulamadan bildirir.** Fiziksel giriş kaydı mevcut sisteminizde kalır; kuşak sisteminin ihtiyaç duyduğu bilgi *hangi antrenmana katıldığıdır* — bu ikisi farklı bilgilerdir ve birbirinin yerine geçmez.

### 11.B Birlikte Karar Vereceğimiz Konular

Aşağıdaki dört konu Faz 1 kapsamına **alınabilir de, sonraki fazlara bırakılabilir de.** Her birinin Faz 1'e alınması teslim süresini etkiler. Karar Elite'e aittir.

#### 1) Açık grup sohbeti *(Talep 9b)*

Antrenman partneri eşleştirme konusunda hemfikiriz ve net kapsamdadır. **Serbest ve açık grup sohbeti** ayrı bir konudur ve bu konudaki çekincelerimizi açıkça paylaşmak istiyoruz:

- **Hukuki konum:** Uygulamada çocuk üyeler var. Açık bir sohbet alanı, Elite'i kullanıcı içeriğinden doğan sorumluluğu taşıyan bir konuma getirir ⚖️
- **Moderasyon:** Çocukların bulunduğu bir sohbet ortamı sürekli gözetim gerektirir. Bu, antrenörlerin yan görevi olarak yürütülebilecek bir iş değildir — **Elite tarafında adı belli bir sorumlu** gerekir ve bu kalıcı bir operasyonel yüktür
- **Koruma tasarımı zorunludur:** Yaşa göre ayrılmış kanallar · yetişkin–çocuk arasında birebir özel mesajlaşma bulunmaması · bildir/sustur/sil/engelle araçları · kayıt ve arşiv · 16 yaş altı için veli onayı ⚖️ · kullanım koşulları

Bu koşullarla kurulabilir. Koşulsuz açık sohbeti önermiyoruz — **bu bir ret değil, bir koruma önerisidir.** Nihai karar Elite'indir.

#### 2) Basit video görüntüleme ve depolama *(Talep 10)*

Panelden video yüklenmesi, depolanması ve üyenin uygulamadan istediği yerde izleyebilmesi. Kapsamlı medya yönetimi (arşiv, etiketleme, arama, izlenme analitiği, evde antrenman programları) **Faz 5'te** planlanmıştır.

Bu basit hâl Faz 1'e alınabilir ya da sonraki fazlara bırakılabilir. Not: video içeriğinin hazırlanması Elite'e aittir; depolama ve trafik sürekli bir işletme gideri doğurur.

#### 3) Basit yapay zekâ asistanı *(Talep 7b)*

Sık sorulan sorulara cevap veren, üye verisine bağlanmayan basit bir asistan. Sisteminizin verisiyle konuşan **kapsamlı asistanlar Faz 3'te** planlanmıştır.

Bu basit hâl Faz 1'e alınabilir ya da Faz 3 beklenebilir. Not: yapay zekâ asistanı sürekli bir kullanım gideri doğurur.

#### 4) Online shop *(Talep 13)*

Ürün satışının Faz 1'e alınıp alınmayacağı açık bir konudur. İki yol vardır:

- **Harici tedarikçinin çalışması tamamlanır** ve iki sistem arasında bağlantı kurulur. Ön koşulu, o sistemin çalışır ve belgelenmiş bir teknik arayüzünün olmasıdır — bu görülmeden bağlantı taahhüt edilemez.
- **Ürün satışı platformun içinde kurulur** — mobil uygulama ve web tek sistem olarak *(§6)*.

Faz 1'de her iki yol da yoktur. Faz 1'de uygulamadan satın alınabilenler: **seminer ve etkinlik bileti, kişisel antrenman, rezerve edilebilir hizmetler** *(§5.7)*.

---

---

# EK — AÇIK KONULAR (İÇ)

> **Müşteri sürümünde yer almaz.**

## A. Kapsam kararları

| # | Konu | Durum | Karar |
|---|---|---|---|
| A1 | Topluluk / açık grup sohbeti | 🔄 Müzakerede | Antrenman partneri eşleştirme **net kapsamda** (§11.A). Açık grup sohbeti **tartışma konusu** — çekinceler ve koruma koşulları §11.B/1'de. Karar müşterinin. |
| A2 | Antrenman partneri arama | ✅ KAPANDI | Yapılandırılmış eşleştirme net kapsamda (§11.A). |
| A3 | "Ek hizmetler" | ✅ KAPANDI | Jenerik rezerve edilebilir hizmet akışı. Sağlık verisi kapsam dışı. |
| A4 | ~~Ödeme / aidat görünürlüğü~~ | ⚠️ **REVİZE — A12 nedeniyle** | CenterCom'daki aidat/fatura verisinin app'te gösterilmesi **Faz 1'den ÇIKTI** (canlı bağlantı gerektiriyordu). App'te görünen: **bizim sistemimizde oluşan** sözleşme durumu + §5.7 satışlarının ödeme geçmişi. |
| A5 | Çocuk / ebeveyn alanı | ✅ KAPANDI | Faz 1 çekirdeği — kimlik mimarisi. |
| A6 | AI sohbet botu | 🔄 Müzakerede | Kapsamlı asistanlar Faz 3. **Basit SSS asistanının Faz 1'e alınması tartışma konusu** (§11.B/3). Yönlendirme yapılmaz. |
| A7 | Mobil uygulamada video | 🔄 Müzakerede | Kapsamlı medya yönetimi Faz 5. **Basit video görüntüleme + depolamanın Faz 1'e alınması tartışma konusu** (§11.B/2). Yönlendirme yapılmaz. |
| A8 | Ticari ödeme rayı | ✅ KAPANDI | Faz 1'e alındı (§5.7). İki tüzel yapı baştan. Para Soluty'den geçmez. |
| A9 | Devreye alma / veri aktarımı | ✅ KAPANDI | Faz 1'e alındı (§5.8). V1'de hiç yoktu. |
| A10 | Fiziksel giriş / ders bazlı katılım | ✅ KAPANDI | Fiziksel giriş CenterCom'da (müşteri teyidi). Katılım: antrenör işaretlemesi veya üye bildirimi. |
| A11 | Fesih akışının başlangıç noktası | ✅ KAPANDI | Fesih **Soluty'de başlar.** CenterCom'a Elite ekibi işler. |
| **A12** | ⭐ **Faz 1'de dış sistem entegrasyonu** | ✅ **KAPANDI — STRATEJİK KARAR** | **Faz 1 hiçbir dış sisteme bağlanmaz.** Ne CenterCom canlı entegrasyonu, ne harici shop tedarikçisi entegrasyonu. Gerekçe: *dış bağımlılık = kontrol edilemeyen gecikme riski.* Tek seferlik veri aktarımı entegrasyon sayılmaz — o kalır (§5.8). Canlı bağlantı istenirse **Faz 1 sonrası ayrı proje.** Bkz. §5.6. |
| **A13** | **Online shop stratejisi** | ✅ **KAPANDI** | **Faz 2 = biz kurarız (mobil + web, tek sistem).** Salondan teslim varsayılan. **Pazaryeri önerilmez** (yanlış problem: Elite'in müşteri bulma değil, mevcut müşteriye satamama sorunu var). Harici tedarikçiyle entegrasyon **Faz 1'e konmaz**; istenirse Faz 1 sonrası ayrı proje, ön koşul = çalışır ve belgelenmiş API. **v2.7 revizyonu:** Shop'un Faz 1'e alınıp alınmayacağı **tartışma konusudur** (§11.B/4). §6'daki Faz 2 önerimiz geçerliliğini korur. |
| **A14** | **Talep listesi mutabakatı** | ✅ **KAPANDI** | 14 maddelik talep listesi madde madde karşılandı. **11 madde net kapsam, 4 konu tartışmada** (§11). Kapsam toplantısının temeli bu bölümdür. |
| **A15** | **QR ile check-in** | ✅ **KAPANDI** | Müşteri bu beklentiden vazgeçti. Katılım kaydı: antrenör işaretlemesi veya üye bildirimi (§11.A, madde 3 notu). |

## B. Yerinde keşifte doğrulanacaklar

| # | Konu |
|---|---|
| B1 | ~~Veri erişim/API politikası~~ → **A12 sonrası Faz 1 için kritik değil.** Faz 1 sonrası bağlantı için hâlâ gerekli. **Migration için Q16–Q21 kritik kalıyor.** |
| B2 | Muhasebe aktarımı aktif mi? → birlikte aktive edilir (güven hamlesi) |
| B3 | Ders/kurs yönetimi zayıf mı, kullanılmıyor mu? |
| B5 | Aile hesabı mevcut sistemde var mı? → veli–çocuk ilişkisi aktarımı |
| B6 | Sözleşme süreleri bugün nasıl takip ediliyor? |
| B7 | Çocuk üye oranı ve yaş dağılımı |
| B9 | Elite'in mevcut teknik video arşivi var mı? |
| B10 | Bugün seminer/etkinlik ücreti nasıl tahsil ediliyor? |
| B11 | İkinci tüzel yapı kuruldu mu? Vergi/KDV durumu? |
| B12 | Üyelerin e-posta / telefon bilgisi güncel mi? |
| B13 | Kaç antrenör kuşak verisi girecek? Kuşak yapısı yazılı mı? |
| B14 | ~~"Açık faturaları görme"~~ → **A4 revizyonu ile netleşti.** Yine de müşteriye ne kastettiği sorulmalı — beklenti yönetimi. |
| B15 | Ders bazlı katılım hangi yöntemle toplanacak? |
| B16 | ~~Fesih mevcut sisteme nasıl iletilecek?~~ → **A12 sonrası: elle.** |
| B17 | §312k erişilebilirlik şartı — **hukukçuya** |
| **B18** | **Harici shop tedarikçisiyle sözleşme ne diyor?** Teslim taahhüdü, fikri mülkiyet, API yükümlülüğü, fesih koşulları. *(Elite'in hukuki durumu — biz karar veremeyiz.)* |
| **B19** | **Kaç ürün kalemi satılacak?** 20 mi, 200 mü — Faz 2'nin boyutunu doğrudan belirler. |
| **B20** | **Ürün görselleri ve metinleri kimde?** Elite'in işi; yoksa Faz 2 lansmanı gecikir *(zarif bozulma sorunu — boş katalog).* |

## C. Talep listesi izlenebilirlik

| # | Başlık | Yer |
|---|---|---|
| 1 | Profil + kuşak | Faz 1 — 5.1 / 5.4 |
| 2 | Antrenman planı ve ders kaydı | Faz 1 — 5.1 |
| 3 | Katılım ve antrenman geçmişi | Faz 1 — 5.1 ✅ *(QR yok — A15)* |
| 4 | Haberler ve push | Faz 1 — 5.1 |
| 5 | Seminerler + bilet | Faz 1 — 5.1 / 5.7 |
| 6 | Sınav sistemi ve gelişim | Faz 1 — 5.1 / 5.4 |
| 7 | Antrenör profilleri | Faz 1 — 5.1 |
| 7b | *AI sohbet botu* | **Tartışmada — §11.B/3** 🔄 |
| 8 | Çocuk ve ebeveyn alanı | Faz 1 — 5.1 ✅ |
| 9 | Topluluk / grup sohbeti | **9a partner eşleştirme: Faz 1 ✅ · 9b açık sohbet: §11.B/1** 🔄 |
| 10a | *Teknik listeleri* | Faz 1 — 5.4 ✅ |
| 10b | *Basit video görüntüleme* | **Tartışmada — §11.B/2** 🔄 |
| 10c | *Video arşivi, evde antrenman programı* | Faz 5 ✅ |
| 11 | Kişisel antrenman + ek hizmetler | Faz 1 — 5.1 / 5.7 ✅ |
| 12 | Dijital doküman yönetimi | Faz 1 — 5.1 / 5.5 ✅ |
| 13 | Shop bağlantısı | **Tartışmada — §11.B/4** 🔄 *(Faz 2 önerisi: A13)* |
| 14 | Motivasyon / başarımlar | Faz 1 — 5.1 ✅ *(+ doğum günü bildirimi)* |

## D. Soluty'nin eklediği (talep listesinde yok)

| Kapsam | Gerekçe |
|---|---|
| **Yönetim paneli** | Her maddenin bir yöneteni olmalı. Zorunlu. |
| **Modern web sitesi** | Müşteri "can alıcı" dedi. **V1'de teklif dışıydı (Faz 3).** |
| **Deneme dersi akışı** | Bugünkü en zayıf nokta. |
| **Dijital sözleşme** | Müşteri bağımsız olarak istedi (kuruluş, yenileme, fesih). |
| **Ticari ödeme rayı** | Müşteri bağımsız olarak istedi ("uygulama üzerinden ek satış"). |
| **Devreye alma + veri aktarımı** | **V1'de hiç yoktu.** |

---

## F. ⚠️ SÜRE VE KAPSAM SAVUNMASI (İÇ — KRİTİK)

> Müşteri "CenterCom çoğu şeyi yapıyor, siz tasarruf edeceksiniz" bekliyor.
> **Gerçek: süre kısalmıyor.**

### F.1 Bağlam

**Önceki teklif:** V1 Faz 1 (web tabanlı yönetim uygulaması) + V1 Faz 2 (mobil app) = **8 ay**
**Kritik:** V1'de **web sitesi Faz 3'tü — teklifin DIŞINDAYDI.**

### F.2 Çıkanlar — gerçek tasarruf

| Kapsam | Tasarruf |
|---|---|
| SEPA tahsilat motoru | ✅ Gerçek |
| Mahnwesen / kademeli ihtar | ✅ Gerçek |
| **Turnike / RFID / dolap donanım entegrasyonu** — müşteri teyit etti | ✅✅ **Büyük** |
| POS / kasa / stok — müşteri teyit etti | ✅ Gerçek |
| Muhasebe / DATEV (V1 Faz 4) | ✅ Zaten teklif dışıydı |
| ⚠️ **CenterCom canlı entegrasyon katmanı** — **A12 ile Faz 1'den çıktı** | ✅ **Orta** *(bkz. F.3 notu)* |
| ⚠️ **Mutabakat / drift tespiti** — entegrasyona bağlıydı, çıktı | ✅ Küçük-orta |

### F.3 Girenler — yeni iş

| Kapsam | Etki |
|---|---|
| **Yeni web sitesi** — V1'de Faz 3, **teklif dışı** | 🔴 **Büyük** |
| **Mobil app zenginleşti** — 14 madde: veli alanı (kimlik mimarisi), rozet, teknik video, hizmet rezervasyonu, sınav | 🔴 Orta-büyük |
| **Ticari ödeme rayı** — kart, misafir, iade, KDV, GoBD, **iki tüzel kişilik yönlendirmesi** | 🔴 Orta-büyük |
| **Dijital sözleşme + yenileme + fesih akışı** | 🔴 Orta |
| **Manuel aktarım süreç tasarımı** (aktarım kuyruğu paneli) — entegrasyonun yerine geçen daha küçük iş | 🔴 Küçük |
| **⚠️ DEVREYE ALMA — V1'de hiç yoktu** | 🔴🔴 **Büyük:** |
| ↳ *Veri aktarımı* — 900 kayıt, veri temizliği | 🔴 Orta |
| ↳ *Veli–çocuk ilişkilerinin yeniden kurulması* | 🔴 Orta |
| ↳ *Kuşak verisinin sıfırdan üretilmesi* + toplu giriş aracı | 🔴 Orta-büyük |
| ↳ *900 üyenin uygulamaya alınması* | 🔴🔴 **Gizli canavar** |

> ⚠️ **v2.7 notu:** §11.B'deki dört konu (açık grup sohbeti, basit video, basit yapay zekâ asistanı, online shop) bu tabloda **yer almıyor** — hiçbiri henüz Faz 1 kapsamında değil. Faz 1'e alınmalarına karar verilirse her biri ayrı bir efor kalemi olarak eklenir.

> ⚠️ **A12'nin dürüst muhasebesi:** Entegrasyon katmanının Faz 1'den çıkması **iş yükünü bir miktar azaltır.** Yerine geçen manuel süreç tasarımı daha küçüktür.
> **Ama takas net ve savunulabilir:** iş yükünden az miktarda düştük, buna karşılık **teslim riskinin en büyük kaynağını ortadan kaldırdık.** Müşteriye bu şekilde anlatılır — "daha az iş yaptık" değil, **"riski sattık, hızı aldık."**

### F.4 Savunma argümanları

**1 — Ödeme: çekirdek aynı, ray değişti.** Ödeme sisteminin ~%70'i raydan bağımsızdır (fatura, ödeme kaydı, GoBD, mutabakat, iade, raporlama). CenterCom'a verdiğimiz SEPA rayı; geri aldığımız **kart rayı** (PSP, misafir ödeme, iade, KDV, iki tüzel kişilik yönlendirmesi). **Kart rayı daha basit değil.**

**2 — Web sitesi teklife girdi.** V1'de Faz 3'tü, 8 aylık teklifin dışındaydı.

**3 — Mobil app büyüdü.** V1'de "üye self-servis" seviyesindeydi. Şimdi 14 maddelik zengin ürün.

**4 — Devreye alma V1'de hiç yoktu.** 900 üye taşınacak, kuşak verisi üretilecek, 900 kişi uygulamaya alınacak.

**5 — Üye master bizde kaldı (D3).** CenterCom'a giden **tahsilat**tı, üye yönetimi değil.

**6 — Müşterinin kendi cevapları savunmayı güçlendiriyor.** Oğuz bağımsız olarak istedi: dijital sözleşme (kuruluş + yenileme + fesih), uygulama üzerinden satış, ödeme görünürlüğü. **Kapsam bizim şişirmemiz değil, müşterinin kendi önceliği.**

**7 — A12 bir hız kararıdır, bir kapsam indirimi değil.** Entegrasyonu çıkarmak Faz 1'i küçültmez; **teslim tarihini bizim kontrolümüze alır.** Müşterinin en çok istediği şey hız ise, bu ona verilen en büyük şeydir.

### F.5 Müşteriye anlatım — kazanan çerçeve

> ❌ "Tasarruf yok."
> ✅ **"Tasarruf var — ama cebimize koymadık. Sizin daha çok istediğiniz şeye yatırdık."**

**Çıkan:** donanım entegrasyonu, SEPA motoru, kasa, ihtar akışı, **dış sistem bağımlılığı**
**Giren:** **web sitesi** (istediniz) · **zengin mobil app** (istediniz) · **ticari ödeme rayı** (istediniz) · **dijital sözleşme + fesih** (istediniz) · **devreye alma** (olmadan hiçbiri işe yaramaz)

**Aynı süreye daha fazla değer — ve teslim tarihi artık kimseye bağlı değil.**

### F.6 Yeni tahmin

⚠️ **Henüz yapılmadı.** F.2 ve F.3'e bakılacak.
**Beklenti: 8 ay civarı. Kısaltma zor ama A12 sonrası biraz daha savunulabilir hale geldi — çünkü belirsizlik azaldı.**

> **Tahminleme iki seviyeli yapılacaktır:** (1) net kapsam için temel tahmin, (2) §11.B'deki her tartışma konusu için ayrı delta. Amaç, kapsam toplantısında bir konu Faz 1'e alınmak istendiğinde süre etkisinin anında söylenebilmesidir. **Bu çalışma henüz yapılmadı.**

---

## G. Dil kontrolü (Almanca sürüm öncesi)

- ❌ Yasaklı: *Code, Programmierung, Entwickler, Feature, Modul*
- ✅ Tercih: *Plattform, System, Katman, Bileşen, Akış, Yetenek*
- ❌ **"Sahip" hiçbir yerde kullanılmaz** → *yönetici / Geschäftsführer / Leitung*
- ❌ Süre ve maliyet müşteri sürümünde **yer almaz**
- ⚠️ Mevcut sistemin adı ve **harici shop tedarikçisinin adı** müşteri belgesinde **anılmaz** — "mevcut sistem", "harici tedarikçi"
- ⚠️ §11.1 hukuki çerçevesi, 16 yaş altı veli onayı, §5.7 GoBD, §6.5 cayma hakkı, B17 — **hukukçuya**
- ⚠️ §11.B/1 açık grup sohbeti: kullanıcı içeriği sorumluluğu, çocuk koruma, 16 yaş altı veli onayı — **hukukçuya**
- ⚠️ §11.B/2 video: içerikte görünen üyelerin ve çocukların görüntü hakkı (Recht am eigenen Bild) — **hukukçuya**
- ⚠️ PSP, video platformu, pazaryeri adları müşteri metninde **dikkatli kullanılır** (§6.6'da Amazon/eBay geçiyor — jenerik "pazaryerleri"ne çevrilebilir, onaya tabi)
- ✅ Yapay zekâ her zaman "asistan"
- ✅ **Gelir vaadi verilmez.** Kaldıraç gösterilir, rakam uydurulmaz.

---

## H. Özellik Dışı İş Kalemleri (İç)

> Bu bölüm iç kullanımdır — müşteri sürümünde yer almaz. Kaynak: docs/R&D/research/non-feature-workload-research-raw.md

Her kalem için: **[S]** = sabit maliyet (kapsam büyüklüğüyle ölçeklenmez), **[Ö]** = özellik sayısıyla ölçeklenir, **[AB]** = Almanya/AB'ye özgü.

### H.1 Kimlik Doğrulama, Yetkilendirme, Oturum Yönetimi
- Rol/izin (RBAC) modeli tasarımı, iki tüzel kişilik ve admin/üye/veli/çocuk rollerinin ayrımı **[S+Ö]**
- Oturum yönetimi, token yenileme, çoklu cihaz oturumu, "her yerden çıkış" **[S]**
- Parola sıfırlama, e-posta/telefon doğrulama, 2FA/MFA **[S]**
- Neden hafife alınır: "Login var" tek satır görünür; ama yetki matrisi her yeni özellikte yeniden gözden geçirilir. Tipik gecikme: rol modelinin geç değişmesi tüm ekranları etkiler.

### H.2 Hesap Yaşam Döngüsü
- Davet → aktivasyon → doğrulama akışı **[S]**
- Mükerrer kayıt tespiti ve hesap birleştirme **[Ö]** — özellikle 900 kullanıcı göçünde kritik
- Hesap devre dışı bırakma/silme (DSGVO ile bağlantılı) **[S+AB]** ⚖️
- Veli-çocuk hesap bağlama, tek veliye birden çok çocuk, reşit olma (18 yaş) geçişinde hesabın çocuğa devri **[S+AB]** ⚖️
- Neden hafife alınır: kimlik modeli "veri modeli" sanılır; oysa durum makinesidir. Reşit olma geçişi ve veli onayının geri çekilmesi nadiren kapsam belgesinde yer alır.

### H.3 Bildirim Altyapısı
- Push (APNs + FCM) sertifika/anahtar yönetimi, token yaşam döngüsü **[S]**
- E-posta teslim edilebilirliği: SPF, DKIM, DMARC DNS kayıtları + DMARC'ı p=none'dan p=reject'e kademeli taşıma (haftalar süren izleme) **[S]**
- SMS entegrasyonu, şablon yönetimi, çok dillilik (DE/EN/TR), kuyruk + tekrar deneme + başarısızlık yönetimi **[S+Ö]**
- Neden hafife alınır: "bildirim gönder" tek satır; oysa teslim edilebilirlik altyapısı olmadan şifre sıfırlama/fatura e-postaları spam'e düşer. Gmail/Microsoft 2024'ten beri kimlik doğrulama gerekliliklerini sıkılaştırdığı için SPF/DKIM/DMARC olmadan gönderilen posta varsayılan olarak spam'e gidebilir.

### H.4 Mobil Uygulamaya Özgü Altyapı
- Sürüm yönetimi + zorunlu güncelleme (force update) mantığı — backend versiyon uyumu dahil (yaygın bir hata: uygulamanın "version code" gönderirken backend'in "semantic version" beklemesi, force-update mantığını bozar) **[S]**
- Deep linking / Universal Links (iOS AASA dosyası) + Android App Links (assetlinks.json), her sürümde test — deep link'ler uygulama güncellemelerinden sonra sıkça kırılır **[S]**
- Çevrimdışı davranış, sertifika/provisioning profili yönetimi **[S]**
- App Store / Google Play yayın süreci: Apple çoğu başvuruyu 24 saat içinde inceler, ancak yeni açılmış hesaplar ve hassas kategoriler (finans/ödeme/çocuk) için ilk yayın günlerce-haftalarca sürebilir; red-yeniden gönderim döngüsü her seferinde 24-48 saat ekler. Google Play güncellemeleri tipik olarak 1-3 saat, yeni uygulamalar/politika incelemesi 3-7 gün. **[S+AB kısmen — çocuk verisi/ödeme ek inceleme]**
- Neden hafife alınır: yayın takvimi "yükle ve bitir" sanılır; red sebepleri (eksik gizlilik açıklaması, izin gerekçesi, metadata uyumsuzluğu) lansmanı kaydırır. 2024-2025'te yapay zekâ ile üretilmiş başvuru dalgası nedeniyle bazı dönemlerde uzun bekleme süreleri yaşandı.

### H.5 Veri Katmanı
- Veri modeli + migration altyapısı (schema evolution) **[S]**
- Arama, filtreleme, sayfalama (her liste ekranında tekrarlayan gizli iş) **[Ö]**
- Dışa aktarım (CSV/Excel), denetim izi / audit log (GoBD + DSGVO için çift amaçlı) **[S+AB]** ⚖️
- Neden hafife alınır: "liste göster" tek satır; ama performanslı sayfalama + filtre + yetki kombinasyonu her ekranda yeniden çözülür.

### H.6 Güvenlik
- Hız sınırlama (rate limiting), kaba kuvvet koruması **[S]**
- Gizli anahtar yönetimi (secrets management), şifreleme (at rest / in transit) **[S]**
- OWASP Top 10 odaklı iş kalemleri, güvenlik testi/pentest **[S+Ö]**
- Deep link güvenliği (OWASP MASVS-PLATFORM: link hijacking, veri doğrulama) **[S]**
- Neden hafife alınır: güvenlik "non-functional" olduğu için kapsam listesinde yok; ama eksik güvenlik gereksinimleri büyük oranda sonradan yeniden işe (rework) dönüşür.

### H.7 Ödeme Altyapısının Görünmeyen Tarafı **[kritik]**
- Idempotency anahtarları (çift tahsilat önleme) — Stripe tüm POST isteklerine idempotency anahtarı eklemeyi önerir **[S]**
- Webhook güvenilirliği: imza doğrulama, 200'ü hızlı dönme (Stripe 30 saniye içinde yanıt beklemezse yeniden dener), asenkron kuyruk, Stripe'ın 72 saatlik tekrar deneme penceresi, mükerrer/sırasız event yönetimi (handler'lar idempotent olmak zorunda) **[S]**
- Ödeme durum makinesi, mutabakat (reconciliation) işleri, iade, chargeback **[S+Ö]**
- SCA/3DS akışları **[S+AB]** ⚖️
- PCI DSS kapsam yönetimi: hosted fields/iframe/redirect ile SAQ A'ya inme (raw kart verisi hiç sisteme girmesin — SAQ A yalnızca ~21 kontrol içerirken SAQ D yüzlerce kontrol gerektirir) **[S]**
- PSP hesap onay süreci (KYB) — iki tüzel kişilik için ayrı ayrı, takvim riski **[S+AB]** ⚖️
- Neden hafife alınır: "Stripe ile ödeme al" tek satır; ama para söz konusu olduğunda her uç durum (başarısız/bekleyen/iptal/iade/mükerrer webhook) ele alınmak zorunda.

### H.8 Yasal/Uyum Gerekliliklerinin TEKNİK Karşılığı ⚖️ **[AB — bu projenin en ayırt edici bloğu]**
- **DSGVO/GDPR veri sahibi hakları**: erişim (SAR), taşınabilirlik (makine-okunur export — JSON/CSV), silinme (Art. 17 — tüm replikalar, yedekler, log'lar dahil; yedek/dağıtık kopyaların silinmesi saatler-aylar sürebilir), düzeltme, işleme kısıtlama — hepsi 1 ay içinde yanıt **[S+Ö][AB]** ⚖️
- **Rıza yönetimi ve ispatı** (consent logs), çerez/izleme yönetimi (CMP) **[S][AB]** ⚖️
- **Reşit olmayan kullanıcı için veli onayı** (DSGVO Art. 8, Almanya varsayılan 16 yaşı korudu; "makul çaba" ile veli doğrulaması, veli portalı/dashboard) **[S][AB]** ⚖️
- **GoBD**: değiştirilemez (unveränderbar) kayıt, boşluksuz+eşsiz fatura numaralandırma, tam değişiklik geçmişi, revizyon-güvenli arşiv, 2025 sonrası faturalar için 8 yıl (öncesi 10 yıl) saklama **[S][AB]** ⚖️
- **ZUGFeRD/XRechnung e-fatura** (EN 16931): B2B'de 1 Ocak 2025'ten beri ALMA zorunlu; GÖNDERME 2027'de (>800.000€ ciro) ve 2028'de (tümü) zorunlu; iki tüzel kişilik için ayrı numara aralıkları (Nummernkreise) **[S][AB]** ⚖️
- **§312k BGB fesih düğmesi**: "Jetzt kündigen" (mahkemeler "Kündigungsabsicht abschicken" gibi belirsiz ifadeleri reddetti — OLG Hamburg 2024) + onay sayfası, login olmadan erişilebilir (OLG Nürnberg 2024), kalıcı veri taşıyıcıda tarih-saatli onay kaydı; uygulaması avukatların deneyimine göre web sitesi mimarisinde derin değişiklik gerektirdiğinden birkaç hafta sürebilir ve mobil sürümde de gerekir **[S][AB]** ⚖️
- **DSA**: bildirim/şikayet mekanizması, şeffaflık, dark pattern yasağı, reşit olmayan koruması **[S][AB]** ⚖️
- **Veri işleme envanteri (RoPA), AVV/sipariş işleme sözleşmesi, eIDAS dijital imza** (SES/AES/QES — sözleşme türüne göre; çoğu ticari sözleşme için SES/AES yeterli, Schriftform gerektiren durumlarda QES) **[S][AB]** ⚖️
- Neden hafife alınır: hukuki gereklilikler "avukat işi" sanılır; oysa her biri veri modeli, API, UI ve süreç değişikliği gerektirir. §312k düğmesi vzbv (tüketici koruma derneği) tarafından sistematik denetlenir; eksiklik fesih hakkı + ihtar (Abmahnung) doğurur.

### H.9 İşletme / DevOps
- Ortam kurulumu (dev/test/prod), CI/CD pipeline **[S]**
- Yedekleme + geri yükleme testi (sadece yedek değil, restore denemesi) **[S]**
- İzleme, uyarı, hata takibi (error tracking), log saklama **[S]**
- Alan adı/SSL/DNS, sertifika yenileme otomasyonu **[S]**
- Neden hafife alınır: sabit başlangıç maliyetleri (araç kurulumu, standart ve idari rapor kurulumu) küçük projelerde ölçek ekonomisi kaybı yaratır — yani bu maliyet küçük projede oransal olarak daha büyüktür.

### H.10 Çok Dillilik / Lokalizasyon
- i18n metin altyapısı, tarih/saat/para birimi biçimleri (DE/EN/TR) **[S]**
- Çeviri iş akışı, eksik çeviri yönetimi, üç dilde QA **[Ö]**
- Neden hafife alınır: "3 dil" tek satır; ama her yeni ekran/e-posta/bildirim üç kez üretilir ve test edilir.

### H.11 Arka Plan İşleri
- Zamanlanmış görevler (cron), kuyruk altyapısı, başarısız iş yönetimi, toplu işlemler **[S+Ö]**
- Neden hafife alınır: fatura üretimi, hatırlatma, mutabakat gibi işler "otomatik olur" sanılır; başarısız iş yönetimi olmadan sessizce çöker.

### H.12 Veri Göçü
- Kaynak veri analizi, temizleme, eşleme, doğrulama, tekrar çalıştırılabilirlik, geri alma planı **[Ö]**
- Neden hafife alınır: doğrulama fazı sıklıkla göçün kendisinden daha pahalıya mal olur; kaynak veri kalitesi ve mükerrer kayıtlar süre/bütçe aşımının en sık nedenidir.

### H.13 Test ve Kalite
- Test stratejisi, cihaz/tarayıcı matrisi (iOS+Android+3 web yüzeyi), kabul testi, regresyon, hata düzeltme döngüsü **[S+Ö]**
- Neden hafife alınır: test "sonunda yapılır" sanılır; regresyon her sürümde tekrarlar.

### H.14 Erişilebilirlik (BFSG/WCAG) ⚖️ **[AB — özellikle araştırıldı]**
- BFSG (Barrierefreiheitsstärkungsgesetz), EU Direktifi 2019/882'nin (European Accessibility Act) Almanya uygulaması, 28.06.2025'ten beri yürürlükte; B2C web, online shop, uygulama, dijital doküman kapsamda; teknik ölçüt genelde WCAG 2.1 (bazı kaynaklar 2.2) Level AA.
- İş kalemleri: klavye navigasyonu, renk kontrastı, alt-text, anlamlı yapı, ekran okuyucu testi, erişilebilirlik beyanı (accessibility statement), sürekli denetim **[S+Ö]**
- Geçiş dönemi: 28.06.2025 öncesi kullanılan ürünler/hizmetler için 27.06.2030'a kadar; ama yeni platform bu istisnadan yararlanamaz.
- Neden hafife alınır: erişilebilirlik "tasarım detayı" sanılır; oysa üç yüzeyi de (mobil+web+panel) etkiler ve sonradan eklemek baştan yapmaktan pahalıdır.

### H.15 Tasarım İşi
- UI/UX tasarım, tasarım sistemi (design system), üç ayrı yüzey (mobil/web/panel) için ayrı tasarım **[S+Ö]**
- Neden hafife alınır: tasarım sistemi bir kez kurulur (sabit) ama her ekran varyantı ölçeklenir.

### H.16 Teslim ve Devir
- Eğitim, dokümantasyon, destek süreci tanımı, hipercare/stabilizasyon dönemi **[S]**
- Neden hafife alınır: proje "canlıya alınca biter" sanılır; hipercare dönemi nadiren fiyatlanır.

### H.17 Proje Yönetimi, Koordinasyon, Müşteri İletişimi
- Planlama ve yönetim; müşteri toplantıları, gereksinim netleştirme, değişiklik triyajı **[S+Ö]**
- Neden hafife alınır: bu iş "faturalanamaz" görülür; oysa toplantı koordinasyonu ve gereksinim netleştirme en sık atlanan faaliyetler arasındadır.

### Sabit vs. Ölçeklenen Ayrımı (tahmin modeli için)

**Sabit (proje başına bir kez — küçük projede oransal olarak daha ağır):** kimlik/oturum altyapısı, bildirim altyapısı (APNs/FCM/SPF-DKIM-DMARC), CI/CD + ortamlar, yedek/restore, izleme, DNS/SSL, tasarım sistemi kurulumu, GoBD arşiv altyapısı, §312k düğmesi, çerez/rıza yönetimi, e-fatura formatı entegrasyonu, PCI kapsam mimarisi, i18n altyapısı, veli onayı mekanizması.

**Özellik sayısıyla ölçeklenen:** her ekranın arama/filtre/sayfalama/yetki'si, her varlığın audit log'u, her akışın 3 dilde çevirisi + testi, her ekranın erişilebilirlik uyumu, her yeni özelliğin regresyon testi, DSGVO haklarının her yeni veri türüne yayılması.

Bu ayrımın kritikliği: sabit başlangıç maliyetleri küçük/orta ölçekli projelerde ölçek ekonomisi kaybı yaratır — bu 900 kullanıcılık projede sabit "kurulum vergisi" oransal olarak ağır basacaktır.

> **Tahmin modeline etkisi:** Bu kalemler özelliklerin üstüne yüzde olarak eklenmez — ayrı bir kova olarak kendi kalemleriyle puanlanır. Sebebi: çoğu sabit maliyettir, özellik sayısıyla ölçeklenmez.

---

*Belge sonu — v2.8 ÇALIŞMA DRAFT*
