# Elite Kickboxing — Stratejik Yol Haritası

**Sürüm:** 2.16 — **ÇALIŞMA DRAFT (Türkçe)**
**Tarih:** 29 Temmuz 2026
**Hazırlayan:** Soluty GmbH
**Durum:** İç çalışma sürümü. Müşteri sürümü Almanca (formal *Sie*) olarak ayrıca hazırlanacaktır.

> v1 (`elite-strategic-roadmap.md`) arşiv olarak korunur.
> **v2.1–2.5:** Kapsam kararları, ticari akış, devreye alma, müşteri cevapları.
> **v2.6:** ⚠️ **STRATEJİK KARAR — Faz 1 dış sistem bağımlılığı içermez (§5.6 yeniden yazıldı).** Faz 2 online shop tam kapsamla tanımlandı (§6).
> **v2.7:** Talep listesi madde madde karşılandı. Belge iki seviyeli hâle getirildi: **net kapsam** ve **tartışma konuları** (§11). Açık grup sohbeti, basit video, basit yapay zekâ asistanı ve online shop tartışma listesine alındı.
> **v2.8:** EK-H eklendi — özellik dışı iş kalemleri (17 kategori). Kaynak: docs/R&D/research/non-feature-workload-research-raw.md
> **v2.9:** §5.2 web sitesi kapsamı mevcut site incelemesi ve güncel standartlarla (yerel görünürlük, yapay zekâ destekli aramalar, doğrudan iletişim kanalları) yeniden tanımlandı. İç iş listesi EK-I olarak eklendi. Tasarım ayrı iş kolu olarak genişletildi. B21–B24 soruları eklendi.
> **v2.10:** Uygulama çok rollü hâle geldi — antrenör ve yönetici görünümleri eklendi (§5.1). Tanımlanabilir rol ve yetki modeli tanımlandı (§5.3, A18). Etkinlik bileti e-posta ile teslim + tek kullanımlık QR doğrulamasıyla netleşti (§5.1, §5.7, A19). EK-H "Altyapı" olarak adlandırıldı.
> **v2.11:** EK-J eklendi — Faz 1'in satır seviyesinde iş kırılımı ve efor modeli (beş kova). EK-I'nın "henüz açık" notu kapatıldı, EK-J'ye yönlendirildi. F.6'ya EK-J referansı eklendi.
> **v2.12:** J.10 eklendi — puandan süreye çevrim (senaryolar, bant çarpanları, PERT tahmini, kaldıraçlar, kalibrasyon protokolü). J.9/1 güncellendi ve J.10'a yönlendirildi.
> **v2.13:** EK-J giriş notu ve F.6 Güncelleme bloğu düzeltildi — adam-güne çevrimin J.10'da tamamlandığı, takvim çevriminin hâlâ açık olduğu netleştirildi.
> **v2.14:** J.11 eklendi — §11.B müzakere konularının deltaları (adam-gün karşılıkları). Online shop kırılımına gözden kaçan bir tasarım kalemi eklendi. J.9/3, F.6 ve F.3'ün ilgili notları J.11'e yönlendirildi.
> **v2.15:** Talep listesi müzakere delta puanları işlendi (§11.B). Üye belge yönetimi gerçek bir kapsam boşluğu olarak işlendi (5 yeni kalem) — §5.1 zaten vaat ediyordu, eksik olan arkasındaki iştir. İki küçük eksik mevcut kalemlere yedirildi. Zincirleme sayı güncellemeleri EK-J genelinde yayıldı.
> **v2.16:** T4-B.5 (online shop görsel tasarımı) satırı geri alındı — J.1'in çift sayım kuralı sayfa şablonu tasarımını zaten ilgili web/mobil kalemi içinde sayıyor ("Tasarım sistemi ve sanat yönetimi → D.15, sayfa şablonu tasarımı B.2'de"); ayrı bir tasarım satırı bu kuralı deliyordu. Hata düzeltmesi, kapsam daraltma değil — tasarım işi T4-A ve T4-B kalemlerinin içinde sayılı kalıyor. J.11.6 ve J.11.2'deki T4 ve toplam rakamları buna göre güncellendi.
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

**Seminerler ve Etkinlikler** — Liste · Antrenör ve içerik bilgisi · **Kayıt ve bilet satışı** *(§5.7)* · Takvim · **E-posta bilet ve tek kullanımlık QR doğrulama**

> Bilet e-posta ile gönderilir; içindeki QR etkinlik girişinde okutularak doğrulanır (tek kullanımlık). Etkinlik girişinde bilet doğrulama ekranı geçerli / geçersiz / kullanılmış durumunu gösterir. Doğrulama bir yetkidir, sabit bir role bağlı değildir.

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

**Antrenör Görünümü** — Uygulama yalnızca üyenin değil, antrenörün de aracıdır. Kapsam: rol geçişi · bugünkü derslerim ve kendi ders programım · ders detayında katılımcı listesi ve üyeye hızlı bakış (kuşak, katılım durumu) · ders sonu katılım işaretlemesi · ders notları ve ders sonu bilgilendirmesi.

> Bu, ders bazlı katılım kaydı kararının (§11.A madde 3) doğal sonucudur. Antrenör ders bitiminde salonun ortasındadır; masaüstü panel bu iş için pratik değildir.
> **Kapsam sınırı:** Sınav günü geçti/kaldı girişi antrenör görünümünde değildir — panelde kalır.

**Yönetici Görünümü** — Bilinçli olarak dar tutulur: kritik bildirimler (yeni üyelik, fesih talebi, ödeme başarısızlığı) ve salt-okunur günlük özet. Yönetimin asıl yeri paneldir; kapsamlı analiz ve yorumlama Faz 3'e aittir. Panelin mobilde tekrarı yapılmaz.

---

### 5.2 Modern Web Sitesi

Web sitesi, Elite'in dijital vitrinidir — üyelerin değil, **henüz üye olmayanların** ilk temas noktası. Faz 1'de site, mobil uygulama ve yönetim paneliyle aynı sistemin üçüncü yüzü olarak kurulur: aynı veri, aynı içerik, tek yönetim.

#### Tanıtım ve Marka Yüzeyi

- **Ana sayfa** — video, stüdyo istatistikleri, güven sinyalleri (değerlendirmeler, federasyon ve kurum iş birlikleri)
- **Altı branş sayfası** — Kickboxen Alle, Kinder, Frauen, Anfänger, Fortgeschrittene, Wettkampf Vorbereitung; her biri video, içerik ve ders programı bağlantısıyla
- **Eğitim programı sayfaları** — IHK iş birliğiyle yürütülen eğitim konumlandırması *(mevcut sitedeki "Bildungsinstitut" kimliği — B23)*
- **Semt sayfaları** — Berlin'in altı semtinden gelen sporcular için ulaşım ve içerik sayfaları; mevcut sitedeki güçlü yerel görünürlük **korunur ve güçlendirilir**
- **Antrenör profilleri** — sistemden beslenir; panelde güncellenen bilgi sitede anında görünür
- **Stüdyo ve galeri** · **Üyelik modelleri ve fiyatlar** · **Sıkça sorulan sorular** · **Konum, ulaşım, çalışma saatleri**

#### Canlı İçerik

- **Canlı ders programı** — uygulama ile aynı kaynaktan; panelde yapılan değişiklik sitede anında görünür *(mevcut sitedeki durağan program görselinin yerini alır)*
- **Blog ve haberler** · **Seminer ve etkinlik takvimi** — detay sayfaları ve kayıt bağlantısıyla
- **Instagram akışı** — güncel paylaşımlar sitede

#### Başvuru ve Kayıt Akışları

- **Deneme dersi kaydı** — branş seçimi, uygun saatler, onay ve hatırlatma
- **Üyelik başvurusu** — dijital sözleşme ve dijital imza ile, kâğıtsız
- **Seminer ve etkinlik kaydı** — online ödeme dahil

#### Doğrudan İletişim

- **WhatsApp ile tek tıkla mesaj** · **Mobilde tek tıkla arama** · **Konu bazlı iletişim formu** · **Bülten kaydı** (çift onaylı) ⚖️

#### Üye Girişi

- Web üzerinden giriş ve temel üye alanı — uygulamadaki hesapla aynı

#### İçerik Yönetimi

- Tüm site içeriği panelden yönetilir
- **Üç dil:** Almanca, İngilizce, Türkçe — otomatik çeviriyle üç dilli teslim; düzeltmeler panel üzerinden Elite tarafından yapılır

#### Bulunurluk — Aranınca Çıkmak, Sorulunca Önerilmek

- **Klasik arama görünürlüğü** — teknik temel, yapısal veri, hız ve performans
- **Yerel görünürlük** — altı semt sayfası, Google işletme profili bağlantısı: yorum vitrini ve etkinliklerin otomatik yayını
- **Yapay zekâ destekli aramalarda görünürlük** — içerik, yapay zekâ araçlarının Elite'i doğru tanıması ve önermesi için yapılandırılır: soru-cevap blokları, alıntılanabilir bilgi kutuları
- **Ölçüm** — ziyaretçi ve dönüşüm takibi, rıza kurallarına uygun ⚖️

#### Tasarım

- Sanat yönetimi ve görsel konsept — mevcut markanın premium, atmosferik çizgisi korunur ve modernize edilir
- Tüm sayfa tipleri için şablon tasarımı; mobil öncelikli

#### Güvenli Geçiş

- Mevcut sitenin sayfaları ve yıllar içinde birikmiş arama sıralamaları **korunarak** taşınır — yönlendirme haritası, içerik taşıma, geçiş sonrası izleme

> **Kapsam sınırları:** WhatsApp bağlantısı Faz 1'de "tek tıkla mesaj" olarak kurulur; gelen mesajların tek merkezden yönetimi sonraki fazların konusudur (§8). Web sitesinde yapay zekâ destekli kullanıcı desteği Faz 1 kapsamında değildir; ayrı bir fazda planlanmıştır.

---

### 5.3 Yönetim Paneli

Her başlığın bir yöneteni olmak zorundadır. Haberi kim girer? Sınav takvimini kim açar? Kuşak terfisini kim işler? Bileti kim satar?

Panel ayrı bir ürün değildir. **Uygulamanın kumanda odasıdır.**

İçerik yönetimi (web + app) · Ders programı ve doluluk · Kuşak ve sınav yönetimi · Teknik tanımlama · Seminer, etkinlik ve **bilet** tanımlama · Rezerve edilebilir hizmet tanımlama · **Satış, ödeme ve iade takibi** *(§5.7)* · Duyuru ve bildirim · **Dijital sözleşme, yenileme ve fesih takibi** · **Rol ve yetki tanımlama** · Üye gelişim görünümü

> Roller ve yetkiler tanımlanabilir; mobil uygulama ve panel aynı rol yapısını ve aynı izin modelini paylaşır.

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
- Seminer ve etkinlik bileti — üretim, e-posta ile teslim, tek kullanımlık doğrulama
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
| 5 | Seminerler ve etkinlikler | Tam karşılanıyor — bilet, ödeme, e-posta ile teslim ve tek kullanımlık QR doğrulama dahil — §5.1 / §5.7 |
| 6 | Sınav sistemi ve gelişim | Tam karşılanıyor + kuşağa bağlı teknik listeleri — §5.1 / §5.4 |
| 7 | Antrenör profilleri | Tam karşılanıyor — §5.1 |
| 8 | Çocuk ve ebeveyn alanı | Tam karşılanıyor — kimlik mimarisinin çekirdeği — §5.1 |
| 9a | Antrenman partneri bulma | Tam karşılanıyor — yapılandırılmış eşleştirme — §5.1 |
| 11 | Kişisel antrenman ve ek hizmetler | Tam karşılanıyor — §5.1 / §5.7 |
| 12 | Dijital doküman yönetimi | Tam karşılanıyor — §5.1 / §5.5 |
| 14 | Motivasyon ve dijital başarımlar | Tam karşılanıyor — §5.1 |

**Madde 3 — katılım kaydı yöntemi.** Katılım iki yoldan işaretlenir: **antrenör ders sonunda, mobil uygulamadaki antrenör görünümünden katılımcıları işaretler**, ya da **üye uygulamadan bildirir.** Fiziksel giriş kaydı mevcut sisteminizde kalır; kuşak sisteminin ihtiyaç duyduğu bilgi *hangi antrenmana katıldığıdır* — bu ikisi farklı bilgilerdir ve birbirinin yerine geçmez.

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
| **A15** | **QR ile check-in (derse giriş)** | ✅ **KAPANDI** | Derse giriş için QR yoktur — müşteri bu beklentiden vazgeçti. Katılım kaydı: antrenör işaretlemesi veya üye bildirimi (§11.A, madde 3 notu). Etkinlik bileti doğrulaması ayrı bir konudur ve QR iledir (bkz. A19). |
| **A16** | **Antrenör mobil görünümü** | ✅ **KAPANDI** | Ders bazlı katılım kararının sonucu. Sınav günü geçti/kaldı girişi kapsam dışı — panelde kalır. |
| **A17** | **Yönetici mobil görünümü** | ✅ **KAPANDI** | Bilinçli olarak dar: kritik bildirim + salt-okunur özet. Panelin tekrarı değil; kapsamlı analiz Faz 3. |
| **A18** | **Tanımlanabilir rol ve yetki** | ✅ **KAPANDI** | Roller ve yetkiler çalışma anında tanımlanabilir. Mobil ve panel aynı izin modelini paylaşır. Bugünden sabit rol listesi belirlenmeyecek — bilinçli tercih. |
| **A19** | **Etkinlik bileti doğrulama** | ✅ **KAPANDI** | Bilet e-posta ile gider, girişte QR okunur, tek kullanımlıktır. |

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
| **B21** | ✅ **KAPANDI** — **İkinci konum:** Mevcut sitedeki formda geçen "Probetraining KuDamm" ikinci bir konum değildir; tek fiziksel adres geçerlidir. |
| **B22** | **Fotoğraf ve video varlıkları** *(AÇIK)*: Mevcut sitedeki fotoğraf/video varlıklarının kullanım hakları kimde? Kaynak dosyalar (yüksek çözünürlük) alınabilir mi? Yeni çekim planlanıyor mu? *(Yeni sitenin görsel kalitesi doğrudan buna bağlı.)* |
| **B23** | **IHK eğitim programı** *(AÇIK)*: Program güncel mi, devam ediyor mu? Yeni sitede ne ağırlıkta yer alacak? *(Mevcut sitede "anerkanntes Bildungsinstitut" konumlandırması var — korunacak mı?)* |
| **B24** | **Mevcut site firmasından talep edilecekler** *(talep listesi hazır)*: Zamanı geldiğinde Elite kendisi talep eder. Liste: alan adı/DNS yönetim erişimi · tam URL envanteri veya site yedeği · Google Search Console erişimi ve sıralama verileri · analitik erişimi/geçmişi · fotoğraf ve video kaynak dosyaları · içerik dışa aktarımı · alan adına bağlı e-posta hesapları/yönlendirmeleri envanteri |
| **B25** | ✅ **KAPANDI** — **Etkinlik bileti doğrulama:** Bkz. A19. |
| **B26** | **Ders notu kime yazılır?** *(AÇIK)*: Not derse mi yazılıyor (katılan herkes görür) yoksa üyeye mi (kişiye özel geri bildirim)? İkisi farklı veri modelidir; kapsam toplantısında netleşmeli. |
| **B27** | **"Formulare" ne kapsıyor?** *(AÇIK)*: Yalnızca imzalanacak belgeler mi, yoksa üyenin doldurduğu formlar (sağlık beyanı vb.) mı? İkincisi ayrı ve daha büyük bir iştir. |
| **B28** | **Talep listesi madde 7 "Kommunikation"** *(AÇIK)*: Başlık iletişim diyor ama alt maddeler yalnızca antrenör profilleri ve yapay zekâ asistanı. Hangi iletişim bekleniyor? Bkz. J.11.3. |
| **B29** | **Hangi belge türleri toplanacak?** *(AÇIK)* ⚖️: Kimlik belgesi saklanacaksa hukuki dayanak gerekir (PAuswG sınırları + DSGVO veri minimizasyonu). Motoru kurarız, ne toplanacağına Elite karar verir — ama bu karar hukukçu görüşü gerektirir. |

## C. Talep listesi izlenebilirlik

| # | Başlık | Yer |
|---|---|---|
| 1 | Profil + kuşak | Faz 1 — 5.1 / 5.4 |
| 2 | Antrenman planı ve ders kaydı | Faz 1 — 5.1 |
| 3 | Katılım ve antrenman geçmişi | Faz 1 — 5.1 ✅ *(QR yok — A15; antrenör görünümü — A16)* |
| 4 | Haberler ve push | Faz 1 — 5.1 ✅ *(+ ders iptalinde otomatik bildirim)* |
| 5 | Seminerler + bilet | Faz 1 — 5.1 / 5.7 ✅ *(e-posta bilet + QR doğrulama — A19; + takvim görünümü)* |
| 6 | Sınav sistemi ve gelişim | Faz 1 — 5.1 / 5.4 |
| 7 | Antrenör profilleri | Faz 1 — 5.1 *(iletişim kanalı açık — B28, bkz. J.11.3)* |
| 7b | *AI sohbet botu* | **Tartışmada — §11.B/3** 🔄 |
| 8 | Çocuk ve ebeveyn alanı | Faz 1 — 5.1 ✅ |
| 9 | Topluluk / grup sohbeti | **9a partner eşleştirme: Faz 1 ✅ · 9b açık sohbet: §11.B/1** 🔄 |
| 10a | *Teknik listeleri* | Faz 1 — 5.4 ✅ |
| 10b | *Basit video görüntüleme* | **Tartışmada — §11.B/2** 🔄 |
| 10c | *Video arşivi, evde antrenman programı* | Faz 5 ✅ |
| 11 | Kişisel antrenman + ek hizmetler | Faz 1 — 5.1 / 5.7 ✅ |
| 12 | Dijital doküman yönetimi | Faz 1 — 5.1 / 5.5 ✅ *(+ üye belge yükleme ve saklama — A.9.6, C.13, D.5.6-7)* |
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
| **Antrenör görünümü** | Ders bazlı katılım kararı bir yüzey gerektiriyor. |
| **Yönetici görünümü** | Dar kapsam; panelin erişemediği anlık bildirim ihtiyacı. |
| **Tanımlanabilir rol ve yetki** | Rol modelinin sonradan değişmesi tüm ekranları etkiler; esnek kurmak sonradan kırmaktan ucuzdur. |

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
| **Antrenör ve yönetici görünümü** | 🔴 Orta |
| **Tanımlanabilir rol ve yetki modeli** | 🔴 Küçük-orta |
| **Etkinlik bileti QR doğrulama** | 🔴 Küçük |

> ⚠️ **v2.7 notu:** §11.B'deki dört konu (açık grup sohbeti, basit video, basit yapay zekâ asistanı, online shop) bu tabloda **yer almıyor** — hiçbiri henüz Faz 1 kapsamında değil. Her biri için ayrı efor kalemleri hesaplanmıştır — bkz. J.11.

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

> **Tahminleme iki seviyeli yapılmıştır:** (1) net kapsam için temel tahmin — EK-J ve J.10'da, (2) §11.B'deki her tartışma konusu için ayrı delta — J.11'de. Amaç, kapsam toplantısında bir konu Faz 1'e alınmak istendiğinde süre etkisinin anında söylenebilmesidir.

> **Güncelleme:** Satır seviyesinde iş kırılımı çalışması başladı. Tahmin modeli beş kovaya dayanıyor — **Yönetim Paneli, Mobil Uygulama, Web Sitesi, Altyapı, Devreye Alma.** İlk üçü müşteriye giden teslimatlardır; Altyapı görünür ekranı olmayan sürekli iştir; Devreye Alma bu projeye özgü tek seferlik geçiş işidir. Proje yönetimi ve koordinasyon (EK-H.17) kalem olarak değil, taban toplamın üzerine **%15** olarak modellenir. Satır seviyesindeki kırılım ve puanlama EK-J'dedir; puandan adam-güne çevrim de J.10'da (üç senaryo + PERT tahmini) yapılmıştır. Takvim çevrimi ve katmanlı mimari etkisi hâlâ açıktır (bkz. J.10.7).

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
- ⚠️ Kimlik belgesi ve benzeri hassas belgelerin saklanması (B29) — **hukukçuya**
- ⚠️ PSP, video platformu, pazaryeri adları müşteri metninde **dikkatli kullanılır** (§6.6'da Amazon/eBay geçiyor — jenerik "pazaryerleri"ne çevrilebilir, onaya tabi)
- ✅ Yapay zekâ her zaman "asistan"
- ✅ **Gelir vaadi verilmez.** Kaldıraç gösterilir, rakam uydurulmaz.

---

## H. Altyapı — Özellik Dışı İş Kalemleri (İç)

> Bu bölüm iç kullanımdır — müşteri sürümünde yer almaz. Kaynak: docs/R&D/research/non-feature-workload-research-raw.md

Her kalem için: **[S]** = sabit maliyet (kapsam büyüklüğüyle ölçeklenmez), **[Ö]** = özellik sayısıyla ölçeklenir, **[AB]** = Almanya/AB'ye özgü.

### H.1 Kimlik Doğrulama, Yetkilendirme, Oturum Yönetimi
- Rol/izin (RBAC) modeli tasarımı — sabit bir rol listesi değil, **tanımlanabilir rol ve yetki modeli** (admin/antrenör/üye/veli/çocuk ve iki tüzel kişilik ayrımı dahil; A18) **[S+Ö]**
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
- Sanat yönetimi ve görsel konsept — mevcut markanın çizgisi temel alınır **[S]**
- Sayfa şablonları tasarımı — 10+ şablon tipi **[S+Ö]**
- Bileşen durumları ve duyarlı davranış **[Ö]**
- Görsel/video kürasyonu **[Ö]**
- Mobil uygulama ve yönetim paneli için ayrı tasarım **[S+Ö]**
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

> **Tahmin modeline etkisi:** Bu kalemler özelliklerin üstüne yüzde olarak eklenmez — ayrı bir kova olarak kendi kalemleriyle puanlanır. Sebebi: çoğu sabit maliyettir, özellik sayısıyla ölçeklenmez. **İstisna:** H.17 (Proje Yönetimi, Koordinasyon, Müşteri İletişimi) bu kuralın dışındadır — ayrı bir kalem olarak puanlanmaz, taban toplamın üzerine yüzde olarak eklenir *(bkz. F.6)*.

---

# EK-I — WEB SİTESİ AYRINTILI İŞ LİSTESİ (İÇ)

> İç yapı listesidir; efor değeri içermez, müşteri sürümüne girmez. §5.2'nin iç karşılığıdır. Diğer bloklar (§5.1, §5.3 vb.) artık aynı çözünürlüktedir — beş kovanın tamamı satır seviyesinde EK-J'dedir (Efor Modeli ve İş Kırılımı).

**I.1 Mimari temel** — Sunucu tarafı üretim mimarisi *(yapay zekâ tarayıcıları istemci kodu çalıştırmaz; GEO ön koşulu)* · çok dilli yönlendirme: hreflang, URL yapısı, dil seçici · görsel/video optimizasyon hattı: duyarlı görseller, modern formatlar, poster kareleri

**I.2 Tanıtım yüzeyi** — Ana sayfa · branş şablonu + 6 branş sayfası · eğitim programı sayfaları (IHK) · semt şablonu + 6 semt sayfası · antrenör liste + detay (sistemden) · fiyat ve üyelik modelleri · galeri · SSS (soru-cevap yapısında) · konum/ulaşım

**I.3 Canlı içerik** — Blog (liste, detay, kategori) · canlı ders programı (branş/gün/antrenör filtreli) · seminer/etkinlik liste + detay · haber/duyurular · Instagram akışı

**I.4 Dönüşüm ve doğrudan iletişim** — Üyelik başvurusu + dijital sözleşme + imza · deneme dersi akışı (branş, uygun saat, onay, hatırlatma) · seminer kaydı + ödeme · iletişim formu (konu bazlı yönlendirme) · WhatsApp tıkla-yaz (yüzen düğme, hazır mesaj) · bülten çift onay ⚖️ · tıkla-ara (mobil yapışkan arama düğmesi)

**I.5 Üye giriş yüzeyi** — Web giriş · temel üye alanı

**I.6 İçerik yönetimi** — Sayfa yönetimi · üç dilde içerik + otomatik çeviri düzeltme akışı · blog/haber yönetimi · web medya yönetimi · sayfa başına arama alanları (üç dil)

**I.7 Bulunurluk: klasik + yerel** — Yapısal veri: işletme, kurs, etkinlik, SSS, video, değerlendirme, gezinme · performans / Core Web Vitals · teknik temel: site haritası, canonical, 404, hreflang · yerel arama: 6 semt sayfası optimizasyonu, ad-adres-telefon tutarlılığı · Google işletme profili: yorum vitrini + etkinlik otomatik yayını · analitik + dönüşüm ölçümü (rıza uyumlu) · sosyal paylaşım kartları

**I.8 Üretken motor optimizasyonu (GEO)** — Soru-cevap içerik mimarisi, alıntılanabilir özet kutuları, doğrudan cevap formatı · varlık tutarlılığı: tekil işletme kimliği, profil bağlantıları, arama motoru kayıtları · yapay zekâ tarayıcı politikası (llms.txt, robots kararları) · görünürlük kontrolü: hangi motor Elite hakkında ne söylüyor

**I.9 Yasal sayfalar ⚖️** — Impressum, Datenschutz, AGB, Widerrufsbelehrung

**I.10 Eski siteden geçiş** — URL envanteri + yönlendirme haritası (~30 URL; 6 semt sayfası kritik) · içerik taşıma: branş metinleri, fotoğraflar, videolar · geçiş sonrası sıralama izleme

**Yapısal notlar:**
- Tek fiziksel konum vardır; semt sayfaları hizmet bölgesi olarak işaretlenir, ayrı işletme gibi gösterilmez *(yerel aramada ceza sebebi)*.
- Mevcut sitedeki durağan ders programı görseli, sistemden beslenen canlı programla değişir.
- WhatsApp sınırı: Faz 1 = tıkla-yaz. Gelen kutusu/otomasyon sonraki fazların konusudur (§8).
- Web sitesinde yapay zekâ destekli kullanıcı desteği Faz 1 dışıdır — tartışma konusu bile değildir (§11.B/3 yalnızca mobil uygulama içindir).

---

# EK-J — EFOR MODELİ VE İŞ KIRILIMI (İÇ)

> **Müşteri sürümünde yer almaz.** Bu bölüm Faz 1'in iç maliyet modelidir.
> Puanlar **göreli iş büyüklüğüdür** — gün, adam-gün veya para değildir.
> Puanın adam-güne çevrilmesi J.10'da yapılmıştır; takvime çevrim (paralellik ve bekleme süreleri) hâlâ açıktır.

---

## J.1 Model

Faz 1 işi **beş kovaya** ayrılır:

| Kova | Doğası |
|---|---|
| **A — Mobil Uygulama** | Müşteriye giden teslimat |
| **B — Web Sitesi** | Müşteriye giden teslimat |
| **C — Yönetim Paneli** | Müşteriye giden teslimat |
| **D — Altyapı** | Görünür ekranı olmayan, üç yüzün de üzerine oturduğu sürekli iş (EK-H'nin puanlanmış hâli) |
| **E — Devreye Alma** | Bu projeye özgü, tek seferlik geçiş işi |

İlk üçü müşterinin gördüğü üç yüzdür (§5). D ve E teslimat değildir ama Faz 1'in içindedir.

### Ölçek tanımı

Ölçek **baştan tanımlanmadığı için** ilk denemede kalem sayısı puana dönüşmüştü — çok sayıda ucuz sayfadan oluşan web sitesi, az sayıda pahalı ekrandan oluşan mobil uygulamadan büyük görünmüştü. Tanım geriye dönük uygulandı:

| Puan | Beden | Tanım |
|---|---|---|
| 1 | XS | Statik içerik sayfası, mevcut şablonla |
| 2 | S | Basit görünüm, tek veri kaynağı |
| 3 | M | Etkileşimli ekran veya yeni şablon |
| 5 | L | Çok adımlı akış, durum yönetimi, kenar durumlar |
| 8 | XL | Karmaşık akış + birden çok rol/kural |

### Çift sayım kuralları

Her iş **tek bir kovada** sayılır:

- **Ödeme arayüzleri** → ilgili yüzde (A.15 mobil, B.11 web), ödeme **mantığı** → D.7
- **Kimlik / veli-çocuk bağlama mekaniği** → D.1, D.2 (ekranlar yüzlerde)
- **Push gönderim altyapısı** → D.3 (bildirim listesi ekranı A.4'te)
- **Çevrimdışı / sürüm / derin bağlantı** → D.4
- **Tasarım sistemi ve sanat yönetimi** → D.15 (sayfa şablonu tasarımı B.2'de)
- **Çeviri iş akışı** → B.6 (i18n altyapısı D.10'da)
- **Arama/filtre/sayfalama bileşeni** → D.5, bir kez; her ekranın kendi puanına ayrıca eklenmez
- **Göç aracı** → D.12; o aracın Elite'in 900 kaydına **uygulanması** → E

---

## J.2 Özet

| Kova | Puan | Pay |
|---|---|---|
| A — Mobil Uygulama | 158 | %25 |
| B — Web Sitesi | 114 | %18 |
| C — Yönetim Paneli | 113 | %18 |
| D — Altyapı | 220 | %35 |
| E — Devreye Alma | 29 | %5 |
| **Taban toplam** | **634** | %100 |
| Proje yönetimi ve koordinasyon (%15) | 95 | |
| **GENEL TOPLAM** | **729** | |

*(yuvarlama nedeniyle toplam %100'ü aşabilir)*

**Okunması gereken üç şey:**

1. **Altyapı tek başına en büyük kova (%35).** Müşterinin hiçbir ekranda görmediği iş, toplam işin üçte biri. Bu, süre savunmasının (F) sayısal karşılığıdır.
2. **Mobil / web oranı 1.39.** Yalnızca ekran-akış işine bakıldığında (web'den bulunurluk ve geçiş çıkarılınca) 158 / 88 = 1.80. Savunulabilir bir tablo.
3. **Devreye alma %5 görünüyor ama iş sonucunu belirleyen kalem bu.** Puanı küçük, riski büyük — ayrıca burada puanlanmayan saf operasyonel efor (antrenör koordinasyonu, kampanya, üye desteği) var.

---

## J.3 Kova A — Mobil Uygulama (158)

| # | Kalem | Açıklama | Beden | P |
|---|---|---|---|---|
| **A.0** | **Uygulama temeli** | | | **16** |
| A.0.1 | Navigasyon ve durum yönetimi | Gezinme yapısı, durum yönetimi, servis bağlantı katmanı | L | 5 |
| A.0.2 | İlk açılış akışı | Karşılama, bildirim izni, dil seçimi | M | 3 |
| A.0.3 | Giriş ve kayıt ekranları | Arayüz; kimlik altyapısı D.1'de | M | 3 |
| A.0.4 | Ortak durum ekranları | Boş / hata / yükleme durumları ve ortak bileşen seti | M | 3 |
| A.0.5 | Ayarlar | Dil, bildirim tercihleri, yasal metinler | S | 2 |
| **A.1** | **Profil ve gelişim** | | | **8** |
| A.1.1 | Profil görüntüleme ve düzenleme | Kişisel bilgiler, iletişim, fotoğraf | M | 3 |
| A.1.2 | Gelişim ekranı | Kuşak durumu, sonraki hedefe ilerleme, antrenman sayacı | M | 3 |
| A.1.3 | Üyelik durumu kartı | Aktif/pasif durum, başlangıç tarihi | S | 2 |
| **A.2** | **Ders programı ve kayıt** | | | **12** |
| A.2.1 | Program görünümü | Haftalık/günlük görünüm, branş ve antrenör filtreleri | M | 3 |
| A.2.2 | Ders detayı | İçerik, antrenör, doluluk göstergesi | S | 2 |
| A.2.3 | Derse kayıt ve iptal | Kontenjan kontrolü, bekleme listesi, iptal kuralları | L | 5 |
| A.2.4 | Ders öncesi hatırlatma tetikleri | Ders öncesi hatırlatma + ders iptali/değişikliğinde kayıtlı üyelere otomatik bildirim tetiği; gönderim altyapısı D.3'te | S | 2 |
| **A.3** | **Katılım ve istatistik** | | | **10** |
| A.3.1 | Antrenör katılımcı işaretleme | Ders sonu katılım işaretleme akışı | L | 5 |
| A.3.2 | Üye kendi katılım bildirimi | Üyenin uygulamadan katılım bildirmesi | S | 2 |
| A.3.3 | Katılım geçmişi ve istatistik | Geçmiş liste, toplam sayaç, dönem kırılımı | M | 3 |
| **A.4** | **Haberler ve bildirimler** | | | **6** |
| A.4.1 | Haber ve duyuru listesi | Liste ve detay görünümü | S | 2 |
| A.4.2 | Bildirim merkezi | Uygulama içi bildirim listesi, okundu durumu | S | 2 |
| A.4.3 | Doğum günü ve özel gün gösterimi | Kutlama ekranı ve tetiği | S | 2 |
| **A.5** | **Seminer ve etkinlikler** | | | **8** |
| A.5.1 | Etkinlik listesi, takvimi ve detayı | Liste ve takvim görünümü; antrenör, içerik, tarih, kontenjan | M | 3 |
| A.5.2 | Etkinlik kayıt akışı | Kayıt, misafir katılımcı seçeneği; ödeme A.15'te | M | 3 |
| A.5.3 | Biletlerim | Satın alınan biletlerin listesi ve gösterimi | S | 2 |
| **A.6** | **Sınav ve kuşak** | | | **13** |
| A.6.1 | Sınav takvimi ve detayı | Yaklaşan sınavlar, koşullar | S | 2 |
| A.6.2 | Sınava kayıt | Asgari antrenman kuralı kontrolüyle | M | 3 |
| A.6.3 | Kuşak ilerleme görünümü | Mevcut kuşak, sonraki hedef, eksik gereksinimler | M | 3 |
| A.6.4 | Teknik listesi görünümü | Kuşağa bağlı teknikler; video bağlantısı opsiyonel | M | 3 |
| A.6.5 | Sınav sonucu ve kuşak geçmişi | Geçti/kaldı kaydı, geçmiş kuşaklar | S | 2 |
| **A.7** | **Topluluk** | | | **7** |
| A.7.1 | Antrenman partneri eşleştirme | Kriter girişi, eşleşme listesi, istek gönder/kabul → antrenman planla. Serbest mesajlaşma yok | L | 5 |
| A.7.2 | Antrenör profilleri | Tanıtım ve uzmanlık alanları (üyenin gördüğü) | S | 2 |
| **A.8** | **Kişisel antrenman ve hizmet rezervasyonu** | | | **9** |
| A.8.1 | Hizmet kataloğu | Rezerve edilebilir hizmetlerin listesi | S | 2 |
| A.8.2 | Uygun saat ve rezervasyon akışı | Müsaitlik, seçim, onay, çakışma kontrolü | L | 5 |
| A.8.3 | Rezervasyonlarım | Liste, iptal, değişiklik | S | 2 |
| **A.9** | **Sözleşme ve belgeler** | | | **14** |
| A.9.1 | Sözleşme görünümü | Durum, süre, bitiş tarihi | S | 2 |
| A.9.2 | Yenileme akışı | Arayüz; iş mantığı §5.5 / D.8'de | S | 2 |
| A.9.3 | Fesih talebi girişi | Arayüz; §312k mekaniği D.8'de | S | 2 |
| A.9.4 | Belgelerim | Liste, imza durumu, indirme | S | 2 |
| A.9.5 | Mobilde imza akışı | İmza alma arayüzü; imza altyapısı D.8'de | M | 3 |
| A.9.6 | Üye belge yükleme | Fotoğraf çekme veya dosya seçme, yükleme durumu | M | 3 |
| **A.10** | **Motivasyon** | | | **5** |
| A.10.1 | Rozet görünümü | Kazanılan ve kilitli rozetler | S | 2 |
| A.10.2 | Kazanım kuralları ve tetikleri | 50/100 antrenman, 1 yıl, ilk sınav, ilk seminer | M | 3 |
| **A.11** | **Çocuk ve ebeveyn alanı** | | | **13** |
| A.11.1 | Veli ana görünümü | Çocuk seçici, çoklu çocuk kartları | M | 3 |
| A.11.2 | Çocuk adına işlemler | Derse ve sınava kayıt, veliye özel yetkiler | L | 5 |
| A.11.3 | Velinin gördüğü çocuk profili | Gelişim, katılım, kuşak | M | 3 |
| A.11.4 | Çocuğa dair bildirimlerin veliye akışı | Hedefleme kuralı | S | 2 |
| **A.12** | **Etkinlik kapı kontrolü** | | | **5** |
| A.12.1 | Bilet QR doğrulama ekranı | Kamera ile okuma, geçerli/geçersiz/kullanılmış gösterimi. Yetkiye bağlı, sabit role değil | L | 5 |
| **A.13** | **Antrenör görünümü** | | | **13** |
| A.13.1 | Rol geçişi ve antrenör ana ekranı | Bugünkü derslerim, kendi ders programım | L | 5 |
| A.13.2 | Ders detayında katılımcı listesi | Üyeye hızlı bakış: kuşak, katılım durumu | M | 3 |
| A.13.3 | Ders notları ve ders sonu bilgilendirmesi | Ders geneli ve üye bazlı not. Görünürlük modeli açık — B26 | L | 5 |
| **A.14** | **Yönetici görünümü** | | | **6** |
| A.14.1 | Kritik bildirim akışı | Yeni üyelik, fesih talebi, ödeme başarısızlığı | M | 3 |
| A.14.2 | Salt-okunur günlük özet | Panelin tekrarı değil; dar tutulur | M | 3 |
| **A.15** | **Ödeme yüzeyi (mobil)** | | | **13** |
| A.15.1 | Sepet ve özet ekranı | Kalem listesi, tutar, indirim gösterimi | S | 2 |
| A.15.2 | Ödeme ekranı | Barındırılan kart alanı entegrasyonu, hata durumları | L | 5 |
| A.15.3 | 3DS ara ekranı ve dönüş durumları | Başarılı/başarısız/iptal/zaman aşımı | S | 2 |
| A.15.4 | Misafir katılımcı ödeme akışı | Üye olmayan kişinin ödemesi | S | 2 |
| A.15.5 | Makbuz ve onay ekranı | İşlem sonucu gösterimi | XS | 1 |
| A.15.6 | Ödeme geçmişi | Kendi işlemlerinin listesi | XS | 1 |

---

## J.4 Kova B — Web Sitesi (114)

| # | Kalem | Açıklama | Beden | P |
|---|---|---|---|---|
| **B.1** | **Mimari temel** | | | **6** |
| B.1.1 | Sunucu tarafı üretim mimarisi | Yapay zekâ tarayıcıları istemci tarafı çalıştırmaz; GEO ön koşulu | M | 3 |
| B.1.2 | Görsel ve video optimizasyon hattı | Duyarlı görseller, modern formatlar, poster kareleri | M | 3 |
| **B.2** | **Tanıtım yüzeyi** | | | **20** |
| B.2.1 | Ana sayfa | Video, stüdyo istatistikleri, güven sinyalleri | L | 5 |
| B.2.2 | Branş şablonu + 6 branş sayfası | Şablon (M) + içerik yerleştirme (S). Sayfa başına yeniden inşa yok | L | 5 |
| B.2.3 | Semt şablonu + 6 semt sayfası | Şablon (S) + içerik (XS). Yerel görünürlüğün taşıyıcısı | M | 3 |
| B.2.4 | Eğitim programı sayfaları | IHK iş birliği konumlandırması — B23 açık | S | 2 |
| B.2.5 | Antrenör liste ve detay | Sistemden beslenir; panelde değişen bilgi sitede görünür | S | 2 |
| B.2.6 | Fiyat ve üyelik modelleri | Statik içerik sayfası | XS | 1 |
| B.2.7 | Galeri, konum ve ulaşım | Statik içerik | XS | 1 |
| B.2.8 | Sıkça sorulan sorular | Soru-cevap yapısında; GEO ile bağlantılı | XS | 1 |
| **B.3** | **Canlı içerik** | | | **11** |
| B.3.1 | Blog | Liste, detay, kategori | M | 3 |
| B.3.2 | Canlı ders programı | Branş/gün/antrenör filtreli; durağan görselin yerini alır | M | 3 |
| B.3.3 | Seminer ve etkinlik liste + detay | Kayıt bağlantısıyla | M | 3 |
| B.3.4 | Haber ve duyurular | Panelden beslenir | XS | 1 |
| B.3.5 | Instagram akışı | Güncel paylaşımların gösterimi | XS | 1 |
| **B.4** | **Dönüşüm ve doğrudan iletişim** | | | **17** |
| B.4.1 | Üyelik başvurusu giriş yüzeyi | Akışın kendisi §5.5 / D.8'de | M | 3 |
| B.4.2 | Deneme dersi akışı | Branş seçimi, uygun saat, onay, hatırlatma. Bugünkü en zayıf nokta | L | 5 |
| B.4.3 | Seminer kaydı giriş yüzeyi | Ödeme B.11'de | M | 3 |
| B.4.4 | İletişim formu | Konu bazlı yönlendirme | S | 2 |
| B.4.5 | WhatsApp tıkla-yaz ve tıkla-ara | Yüzen düğme, hazır mesaj, mobil yapışkan arama | XS | 1 |
| B.4.6 | Bülten kaydı (çift onaylı) ⚖️ | Onay akışı ve kayıt saklama | M | 3 |
| **B.5** | **Üye giriş yüzeyi** | | | **5** |
| B.5.1 | Web giriş ekranı | Uygulamadaki hesapla aynı | S | 2 |
| B.5.2 | Temel üye alanı | Web üzerinden sınırlı üye görünümü | M | 3 |
| **B.6** | **İçerik yönetimi** | | | **15** |
| B.6.1 | Sayfa yönetimi | Tüm site içeriğinin panelden yönetimi | L | 5 |
| B.6.2 | Üç dilde içerik ve çeviri düzeltme akışı | Otomatik çeviriyle teslim, Elite düzeltir. i18n altyapısı D.10'da | M | 3 |
| B.6.3 | Blog ve haber yönetimi | Yazma, yayınlama, kategori | M | 3 |
| B.6.4 | Web medya yönetimi | Görsel ve video yükleme, düzenleme | S | 2 |
| B.6.5 | Sayfa başına arama alanları | Üç dilde meta ve yapısal alanlar | S | 2 |
| **B.7** | **Bulunurluk: klasik ve yerel** | | | **16** |
| B.7.1 | Yapısal veri | İşletme, kurs, etkinlik, SSS, video, değerlendirme, gezinme | L | 5 |
| B.7.2 | Performans ve Core Web Vitals | Hız ölçütlerinin karşılanması | S | 2 |
| B.7.3 | Teknik temel | Site haritası, canonical, 404, hreflang | S | 2 |
| B.7.4 | Yerel arama optimizasyonu | 6 semt sayfası, ad-adres-telefon tutarlılığı. Tek fiziksel konum — semtler hizmet bölgesi | S | 2 |
| B.7.5 | Google işletme profili bağlantısı | Yorum vitrini, etkinliklerin otomatik yayını | M | 3 |
| B.7.6 | Analitik ve dönüşüm ölçümü ⚖️ | Rıza kurallarına uygun | XS | 1 |
| B.7.7 | Sosyal paylaşım kartları | Paylaşım önizlemeleri | XS | 1 |
| **B.8** | **Üretken motor optimizasyonu (GEO)** | | | **5** |
| B.8.1 | Soru-cevap içerik mimarisi | Alıntılanabilir özet kutuları, doğrudan cevap formatı | S | 2 |
| B.8.2 | Varlık tutarlılığı | Tekil işletme kimliği, profil bağlantıları, kayıtlar | XS | 1 |
| B.8.3 | Yapay zekâ tarayıcı politikası | llms.txt, robots kararları | XS | 1 |
| B.8.4 | Görünürlük kontrolü | Hangi motor Elite hakkında ne söylüyor | XS | 1 |
| **B.9** | **Yasal sayfalar** ⚖️ | | | **2** |
| B.9.1 | Impressum, Datenschutz, AGB, Widerrufsbelehrung | İçerik hukukçudan; yerleştirme bizden | S | 2 |
| **B.10** | **Eski siteden geçiş** | | | **5** |
| B.10.1 | URL envanteri ve yönlendirme haritası | ~30 URL; 6 semt sayfası kritik | M | 3 |
| B.10.2 | İçerik taşıma | Branş metinleri, fotoğraf, video — B22 açık | XS | 1 |
| B.10.3 | Geçiş sonrası sıralama izleme | Kayıp tespiti ve düzeltme | XS | 1 |
| **B.11** | **Ödeme yüzeyi (web)** | | | **12** |
| B.11.1 | Sepet ve özet ekranı | | S | 2 |
| B.11.2 | Ödeme ekranı | Barındırılan kart alanı entegrasyonu | L | 5 |
| B.11.3 | 3DS ara ekranı ve dönüş durumları | | S | 2 |
| B.11.4 | Misafir katılımcı ödeme akışı | Üye olmayan seminer katılımcısı | S | 2 |
| B.11.5 | Makbuz ve onay ekranı | | XS | 1 |

---

## J.5 Kova C — Yönetim Paneli (113)

| # | Kalem | Açıklama | Beden | P |
|---|---|---|---|---|
| **C.0** | **Panel temeli** | | | **13** |
| C.0.1 | Gezinme ve rol bazlı görünüm | Menü yapısı, yetkiye göre görünürlük | L | 5 |
| C.0.2 | Panel girişi ve oturum | Arayüz; altyapı D.1'de | M | 3 |
| C.0.3 | Ana gösterge ekranı | Günlük özet, bekleyen işler | M | 3 |
| C.0.4 | Ortak tablo ve form bileşenleri | Ekranlara bağlama; generic arama/filtre bileşeni D.5'te | S | 2 |
| **C.1** | **İçerik yönetimi (web + app)** | | | **11** |
| C.1.1 | Web sayfa ve blog yönetimi arayüzü | B.6 ile aynı motor, panel tarafı | L | 5 |
| C.1.2 | Uygulama içeriği yönetimi | Haber, duyuru, tanıtım içerikleri | M | 3 |
| C.1.3 | Antrenör profili yönetimi | Web ve uygulamayı besler | M | 3 |
| **C.2** | **Ders programı ve doluluk** | | | **10** |
| C.2.1 | Ders ve seri tanımlama | Tekrarlayan program, istisna günler; iptal işlemi kayıtlı üyelere otomatik bildirimi tetikler | L | 5 |
| C.2.2 | Kontenjan ve bekleme listesi yönetimi | | M | 3 |
| C.2.3 | Doluluk görünümü | Ders bazlı katılım ve doluluk | S | 2 |
| **C.3** | **Kuşak ve sınav yönetimi** | | | **14** |
| C.3.1 | Kuşak hiyerarşisi tanımlama | Seviyeler, sıra, isimlendirme | L | 5 |
| C.3.2 | Kuşak başına asgari antrenman kuralı | Kural tanımı ve kontrolü | M | 3 |
| C.3.3 | Sınav planlama ve sınav günü akışı | Takvim, katılımcı listesi | M | 3 |
| C.3.4 | Geçti/kaldı kaydı ve kuşak geçmişi | Antrenör görünümünde değil, panelde — A16 | M | 3 |
| **C.4** | **Teknik tanımlama** | | | **3** |
| C.4.1 | Teknik listesi yönetimi | Kuşağa bağlama, opsiyonel video bağlantısı | M | 3 |
| **C.5** | **Seminer, etkinlik ve bilet tanımlama** | | | **7** |
| C.5.1 | Etkinlik tanımlama | Tarih, kontenjan, fiyat, antrenör | M | 3 |
| C.5.2 | Bilet tanımlama ve fiyatlandırma | Üye/misafir ayrımı | S | 2 |
| C.5.3 | Katılımcı listesi ve giriş durumu | QR doğrulama sonuçlarının görünümü | S | 2 |
| **C.6** | **Rezerve edilebilir hizmet tanımlama** | | | **5** |
| C.6.1 | Hizmet ve müsaitlik tanımlama | Süre, fiyat, uygun saatler, sağlayıcı | L | 5 |
| **C.7** | **Satış, ödeme ve iade takibi** | | | **9** |
| C.7.1 | İşlem listesi ve detayı | Filtreleme, durum takibi | M | 3 |
| C.7.2 | İade işleme | İade başlatma ve durum takibi | M | 3 |
| C.7.3 | Gelir raporlaması | İki tüzel yapı ayrımıyla | M | 3 |
| **C.8** | **Duyuru ve bildirim** | | | **5** |
| C.8.1 | Duyuru yazma ve hedefleme | Kime gidecek: branş, kuşak, yaş grubu, veli | L | 5 |
| **C.9** | **Sözleşme, yenileme ve fesih takibi** | | | **7** |
| C.9.1 | Sözleşme listesi ve durum takibi | Süre, bitiş, yenileme uyarısı | M | 3 |
| C.9.2 | Fesih talebi kuyruğu | Talep görünür olur, Elite ekibi mevcut sisteme işler — A11 | S | 2 |
| C.9.3 | Yenileme işleme | | S | 2 |
| **C.10** | **Aktarım kuyruğu** | | | **8** |
| C.10.1 | Hazır formatlanmış aktarım listesi | Yeni üye, durum değişikliği, fesih — Elite ekibi mevcut sisteme işler. A12'nin operasyonel karşılığı | XL | 8 |
| **C.11** | **Üye gelişim görünümü** | | | **7** |
| C.11.1 | Üye arama ve liste | Filtreleme, hızlı erişim | S | 2 |
| C.11.2 | Üye 360° profili | Kuşak, katılım, sözleşme, ödeme, çocuk bağlantısı tek ekranda | L | 5 |
| **C.12** | **Rol ve yetki tanımlama** | | | **6** |
| C.12.1 | Rol tanımlama ve yetki matrisi arayüzü | Roller ve yetkiler tanımlanabilir — A18 | M | 3 |
| C.12.2 | Kullanıcıya rol atama | Mobil ve panel aynı izin modelini paylaşır | M | 3 |
| **C.13** | **Üye belge yönetimi** | | | **8** |
| C.13.1 | Belge türü tanımlama | Hangi belge, kimden, zorunlu mu, durum takibi | L | 5 |
| C.13.2 | Personelin üye adına belge yüklemesi ve görüntülemesi | | M | 3 |

---

## J.6 Kova D — Altyapı (220)

> EK-H'nin puanlanmış hâli. Alt numaralar EK-H ile birebir eşleşir (D.1 = H.1).
> Gerekçeler ve "neden hafife alınır" notları EK-H'de; burada yalnızca puanlama.

| # | Kalem | Açıklama | Beden | P |
|---|---|---|---|---|
| **D.1** | **Kimlik, yetkilendirme, oturum** | | | **21** |
| D.1.1 | Tanımlanabilir rol ve izin modeli | Sabit rol listesi değil; çalışma anında tanımlanabilir. A18 nedeniyle sabit modele göre daha ağır | XL | 8 |
| D.1.2 | Çalışma anı yetki kontrolü | Her ekran ve uç noktada; mobil ve panel aynı modeli paylaşır | L | 5 |
| D.1.3 | Oturum yönetimi | Token yenileme, çoklu cihaz, "her yerden çıkış" | M | 3 |
| D.1.4 | Parola sıfırlama ve doğrulama | E-posta/telefon doğrulama, 2FA/MFA | L | 5 |
| **D.2** | **Hesap yaşam döngüsü** | | | **13** |
| D.2.1 | Davet, aktivasyon, doğrulama akışı | | M | 3 |
| D.2.2 | Hesap devre dışı bırakma ve silme ⚖️ | DSGVO ile bağlantılı | L | 5 |
| D.2.3 | Veli-çocuk bağlama ve reşit olma geçişi ⚖️ | Tek veliye çok çocuk; 18 yaşta hesabın çocuğa devri | L | 5 |
| **D.3** | **Bildirim altyapısı** | | | **13** |
| D.3.1 | Push sertifika ve token yaşam döngüsü | APNs + FCM | M | 3 |
| D.3.2 | E-posta teslim edilebilirliği | SPF, DKIM, DMARC + kademeli sıkılaştırma | L | 5 |
| D.3.3 | Kuyruk, tekrar deneme, başarısızlık yönetimi | Şablon yönetimi ve üç dil dahil | L | 5 |
| **D.4** | **Mobil uygulamaya özgü altyapı** | | | **14** |
| D.4.1 | Sürüm yönetimi ve zorunlu güncelleme | Backend versiyon uyumu dahil | M | 3 |
| D.4.2 | Derin bağlantı | iOS Universal Links + Android App Links, her sürümde test | M | 3 |
| D.4.3 | Çevrimdışı davranış ve sertifika yönetimi | Provisioning profilleri | L | 5 |
| D.4.4 | Mağaza yayın süreci | İnceleme, red-yeniden gönderim döngüsü. Ödeme ve çocuk verisi ek inceleme getirir | M | 3 |
| **D.5** | **Veri katmanı** | | | **27** |
| D.5.1 | Veri modeli ve göç altyapısı | Şema evrimi | L | 5 |
| D.5.2 | Generic arama, filtreleme, sayfalama | Bir kez inşa edilir; her ekranda yeniden sayılmaz | L | 5 |
| D.5.3 | Denetim izi (audit log) ⚖️ | GoBD + DSGVO çift amaçlı; kuşak geçmişi dahil | L | 5 |
| D.5.4 | Dışa aktarım | CSV/Excel | S | 2 |
| D.5.5 | Sertifika ve belge üretim motoru | PDF üretimi | S | 2 |
| D.5.6 | Üye belgesi depolama ve yetkiye bağlı erişim ⚖️ | Belge türü bazında yetki — A18 ile | L | 5 |
| D.5.7 | Belge saklama süresi ve silme kuralları ⚖️ | DSGVO veri minimizasyonu | M | 3 |
| **D.6** | **Güvenlik** | | | **13** |
| D.6.1 | Hız sınırlama ve kaba kuvvet koruması | | M | 3 |
| D.6.2 | Gizli anahtar yönetimi ve şifreleme | At rest / in transit | M | 3 |
| D.6.3 | OWASP odaklı sıkılaştırma ve güvenlik testi | | L | 5 |
| D.6.4 | Derin bağlantı güvenliği | Link hijacking, veri doğrulama | S | 2 |
| **D.7** | **Ödeme altyapısının görünmeyen tarafı** | | | **24** |
| D.7.1 | Idempotency ve çift tahsilat önleme | | S | 2 |
| D.7.2 | Webhook güvenilirliği | İmza doğrulama, asenkron kuyruk, mükerrer/sırasız olay yönetimi | L | 5 |
| D.7.3 | Ödeme durum makinesi ve mutabakat | İade, chargeback, uç durumlar | L | 5 |
| D.7.4 | SCA/3DS akışları ⚖️ | | M | 3 |
| D.7.5 | PCI kapsam mimarisi | Barındırılan alan/iframe ile kapsamı daraltma | M | 3 |
| D.7.6 | PSP hesap onayı (KYB) ⚖️ | İki tüzel kişilik için ayrı ayrı; takvim riski | M | 3 |
| D.7.7 | Bilet üretimi ve tek kullanımlık doğrulama | QR üretimi, kullanıldı durumu, tekrar kullanım engeli — A19 | M | 3 |
| **D.8** | **Yasal ve uyum gerekliliklerinin teknik karşılığı** ⚖️ | | | **35** |
| D.8.1 | DSGVO veri sahibi hakları ⚖️ | Erişim, taşınabilirlik, silinme, düzeltme, kısıtlama — 1 ay içinde yanıt | XL | 8 |
| D.8.2 | Rıza yönetimi ve ispatı ⚖️ | Consent log, çerez/izleme yönetimi | M | 3 |
| D.8.3 | Reşit olmayan için veli onayı ⚖️ | DSGVO Art. 8; Almanya 16 yaş | M | 3 |
| D.8.4 | GoBD uyumu ⚖️ | Değiştirilemez kayıt, boşluksuz numaralandırma, revizyon-güvenli arşiv | L | 5 |
| D.8.5 | E-fatura formatı ⚖️ | ZUGFeRD/XRechnung; iki tüzel kişilik için ayrı numara aralıkları | L | 5 |
| D.8.6 | §312k fesih düğmesi ⚖️ | Web ve mobil; login olmadan erişilebilir; tarih-saatli onay kaydı | M | 3 |
| D.8.7 | DSA gereklilikleri ⚖️ | Bildirim/şikayet mekanizması, şeffaflık, reşit olmayan koruması | M | 3 |
| D.8.8 | RoPA, AVV, dijital imza altyapısı ⚖️ | eIDAS — sözleşme türüne göre imza seviyesi | L | 5 |
| **D.9** | **İşletme ve DevOps** | | | **13** |
| D.9.1 | Ortam kurulumu ve CI/CD | dev/test/prod | L | 5 |
| D.9.2 | Yedekleme ve geri yükleme testi | Yalnızca yedek değil, restore denemesi | M | 3 |
| D.9.3 | İzleme, uyarı, hata takibi | Log saklama dahil | M | 3 |
| D.9.4 | Alan adı, SSL, DNS | Sertifika yenileme otomasyonu | S | 2 |
| **D.10** | **Çok dillilik altyapısı** | | | **3** |
| D.10.1 | i18n metin altyapısı | Tarih, saat, para birimi biçimleri (DE/EN/TR). Çeviri iş akışı B.6'da | M | 3 |
| **D.11** | **Arka plan işleri** | | | **5** |
| D.11.1 | Zamanlanmış görev ve kuyruk altyapısı | Başarısız iş yönetimi, toplu işlemler. Hatırlatma tetikleri bu motoru kullanır | L | 5 |
| **D.12** | **Veri göçü araçları** | | | **5** |
| D.12.1 | Göç aracı çatısı | Eşleme, doğrulama, tekrar çalıştırılabilirlik, geri alma planı. Elite verisine uygulanması E'de | L | 5 |
| **D.13** | **Test ve kalite** | | | **8** |
| D.13.1 | Test stratejisi ve regresyon disiplini | Cihaz/tarayıcı matrisi (iOS + Android + 3 web yüzeyi), üç dilde QA | XL | 8 |
| **D.14** | **Erişilebilirlik (BFSG/WCAG)** ⚖️ | | | **5** |
| D.14.1 | Erişilebilirlik uyumu | Klavye navigasyonu, kontrast, alt metin, ekran okuyucu testi, erişilebilirlik beyanı. Üç yüzeyi de etkiler | L | 5 |
| **D.15** | **Tasarım işi** | | | **16** |
| D.15.1 | Sanat yönetimi ve görsel konsept | Mevcut markanın premium çizgisi temel alınır | L | 5 |
| D.15.2 | Marka sistemi | Tipografi, renk, ikonografi | M | 3 |
| D.15.3 | Bileşen durumları ve duyarlı davranış tasarımı | Sayfa şablonu tasarımı B.2'de | L | 5 |
| D.15.4 | Görsel ve video kürasyonu | B22 açık — kaynak dosyaların durumu | M | 3 |
| **D.16** | **Teslim ve devir** | | | **5** |
| D.16.1 | Eğitim, dokümantasyon, hipercare | Stabilizasyon dönemi | L | 5 |

> **D.17 yoktur.** EK-H.17 (proje yönetimi ve koordinasyon) kalem olarak puanlanmaz; taban toplamın üzerine %15 olarak eklenir — bkz. J.7.

---

## J.7 Kova E — Devreye Alma (29)

| # | Kalem | Açıklama | Beden | P |
|---|---|---|---|---|
| E.1 | Kaynak veri analizi ve eşleme | Mevcut sistemin dışa aktarım formatına özel çalışma | M | 3 |
| E.2 | Veri temizliği ve mükerrer kayıt birleştirme | 900 kayda fiilen uygulanır. Araç D.12'de, uygulama burada | L | 5 |
| E.3 | Veli–çocuk ilişkilerinin yeniden kurulması | B5 açık: ilişki mevcut sistemde varsa ucuz, yoksa elle eşleme | M | 3 |
| E.4 | İçe aktarım ve doğrulama çalıştırma | Doğrulama fazı göçün kendisinden pahalı olabilir | S | 2 |
| E.5 | Kuşak verisi toplu giriş aracı | Kuşak bilgisi hiçbir sistemde yok; sıfırdan üretilir. Kalıcı yönetim ekranı C.3'te | L | 5 |
| E.6 | Davet kodu ve hesap eşleştirme akışı | Mevcut kaydı talep etme; yeni kayıttan farklı akış | L | 5 |
| E.7 | Kimlik doğrulama süreç desteği | Hesabın doğru kişiye gitmesi | M | 3 |
| E.8 | Veli–çocuk profil eşleştirme arayüzü | Devreye alma sırasında kullanılır | M | 3 |

> **Puanlanmayan operasyonel efor:** Antrenörlerin kuşak verisi girişinin koordinasyonu, devreye alma kampanyası, üye desteği. Bunlar yazılım işi değildir ve bu tabloda yer almaz — ama **Faz 1'in iş sonucunu doğrudan belirler** (§5.8). Süre planlamasında ayrıca dikkate alınmalıdır.

---

## J.8 Proje yönetimi ve koordinasyon

EK-H.17 diğer altyapı kalemleri gibi puanlanmaz. Sebebi: planlama, müşteri toplantıları, gereksinim netleştirme ve değişiklik triyajı **kapsamın büyüklüğüyle birlikte ölçeklenir** — sabit bir kalem değildir.

**Taban 634 × %15 = 95.**

Oran, işin üç yüzeye (mobil, web, panel) yayılması, üç dilde yürümesi ve müşteri tarafında birden çok karar merciinin bulunması dikkate alınarak seçilmiştir.

---

## J.9 Modelin sınırları — bilinçli olarak açık bırakılanlar

1. **Puan ≠ süre.** Puanın adam-güne çevrilmesi artık J.10'da yapıldı (üç senaryo + PERT tahmini). Ama bu hâlâ bir takvim değildir — paralellik sınırları ve bekleme süreleri henüz hesaba katılmadı (bkz. J.10.7).
2. **Katmanlı mimari etkisi tabloda yok.** Faz 1'in Corex katmanlı mimarisine uygun geliştirilmesi kararı (bkz. `internal/decisions.md`, 2026-07-27) geliştirme süresini tahminen %30 artırıyor. Bu, puana değil **puan→süre katsayısına** yansıtılacaktır.
3. **§11.B'deki dört konu bu tabloda yok.** Açık grup sohbeti, basit video, basit yapay zekâ asistanı ve online shop — hiçbiri Faz 1 kapsamında değil ve J.2–J.10'daki hiçbir sayıya dahil değildir. Her biri için ayrı delta hesaplanmıştır — bkz. J.11.
4. **Açık sorular puanı etkileyebilir.** B5 (veli-çocuk ilişkisi mevcut sistemde var mı → E.3), B22 (görsel varlıklar → D.15.4), B26 (ders notu görünürlük modeli → A.13.3).
5. **Web'in bulunurluk kalemleri (B.7, B.8) inşa işi değil, optimizasyon disiplinidir.** Aynı kovada duruyorlar ama doğaları farklı; süreye çevrilirken ayrı ele alınmalıdır.

---

## J.10 Puandan süreye — senaryolar ve tahmin

### J.10.1 Birim: meşgul saat

Bu bölümdeki tüm saat değerleri **koordinasyonu yürüten kişinin meşgul saatidir**:
yönlendirme, çıktı incelemesi, düzeltme, test, entegrasyon, karar. Üretim
aracının duvar saati değildir — kıt kaynak insan saatidir ve takvimi belirleyen
de odur.

Varsayımlar: günde 6 verimli saat · tek kişi · katmanlı mimari etkisi (Corex)
**dahil değil** · takvim değil, adam-gün.

### J.10.2 Üç senaryo

**İyimser (140 adam-gün)** — Omurga ilk 2–3 ayda oturur; sonrasında hız belirgin
artar. Üretim aracının yetenekleri proje boyunca iyileşir. Koşulludur: kapsam
donar (§11.B'nin dört konusu Faz 1'e girmez), müşteri kararları gecikmez
(B22, B23, B26 ve ödeme sağlayıcı/tüzel yapı konuları), mimari kararlar ilk
seferde tutar (özellikle D.1.1 rol modeli). Üç koşul birlikte tutmazsa bu
senaryo geçersizdir.

**Normal (196 adam-gün)** — Koordinasyon Soluty'de, uygulama üretim aracıyla.
Web sitesinin **yalnızca tasarım işi** dışarıdan uzman desteğiyle yürür; web
sitesinin kalan yapımı Soluty'dedir. Dış tasarım desteğinin efor tablosuna net
etkisi ihmal edilebilir (~8 saat) ancak **takvim bağımlılığı yaratır**: tasarım
gecikirse B.2 ve B.6 bekler.

**Kötümser (310 adam-gün)** — Katmanlı mimari beklenenden fazla zorlar, mimari
kararlar tekrar ele alınır, öğrenme eğrisi uzar. **Hiçbir düzeltici kol
çekilmemiş** hâldir — kollar J.10.5'te ayrıca tanımlıdır ve bilinçli olarak bu
senaryonun dışında tutulmuştur.

### J.10.3 Bant çarpanları

| Beden | İyimser | Normal | Kötümser |
|---|---|---|---|
| XS | 0,75 | 1,0 | 1,5 |
| S | 1,75 | 2,5 | 4 |
| M | 3,5 | 5 | 8 |
| L | 8 | 11 | 17 |
| XL | 16 | 22 | 38 |
| **Toplam saat** | **841** | **1.175** | **1.859** |
| **Adam-gün** | **140** | **196** | **310** |

Puan başına maliyet hiçbir senaryoda doğrusal değildir; karmaşıklık cezası
kötümser dünyada büyür (XS→XL oranı normalde 2,75 · kötümserde 3,2). Kötümser
senaryoda XS bandı bilinçli olarak artırılmamıştır: statik bir içerik sayfası
taşmaz, taşan karmaşık kalemlerdir.

### J.10.4 PERT sonucu

Üç noktalı tahmin: **E = (İyimser + 4×Normal + Kötümser) / 6**

| | Adam-gün |
|---|---|
| Beklenen değer (E) | **206** |
| Standart sapma (SD) | 28 |
| E + 1SD | 234 |
| **E + 2SD** | **262** |

**İki sayının iki ayrı rolü vardır:**

| Sayı | Kullanım |
|---|---|
| **206 adam-gün** | İç planlama: kaynak, sıra, kilometre taşları |
| **262 adam-gün** | Taahhüt tabanı: müşteriye verilecek tarih buradan türetilir |

Aradaki 56 günlük fark keyfi değildir; projenin kendi belirsizlik bandından
hesaplanmıştır. Proje kuralı gereği söylenen tarihe eklenen +2 hafta bunun
**üstüne** biner ve farklı bir riski karşılar: öngörülemeyenleri.

⚠️ **SD'nin sınırı:** Üç senaryo bağımsız tahminler değildir; aynı yargının
ölçeklenmiş hâlleridir. Dolayısıyla SD bir **duyarlılık bandıdır, güven aralığı
değildir.** Gerçekleşen değer bandın dışına, özellikle üstüne çıkabilir.

### J.10.5 Kaldıraçlar — senaryo değil, karar

Aşağıdakiler senaryoların içinde DEĞİLDİR. Sapma görüldüğünde çekilebilecek
kollardır ve her birinin bedeli vardır.

**K1 — Katmanlı mimari kapsamını daraltmak.** Süreyi düşürür. Bedeli takvimde
değil iş modelindedir: Elite tek seferlik özel çözüme dönüşür, ikinci müşteride
her şey sıfırdan başlar. Ara seçenek: yalnızca en yüksek yeniden kullanım
değerli kalemlerde (D.1 rol modeli, D.5 veri katmanı) katmanlı yapıyı korumak,
kalanı Elite'e özel yürütmek.

**K2 — Ekibe kişi eklemek.** Net kazanç doğrusal değildir: darboğaz koordinasyon
saatidir, ikinci kişi bağımsız çalışamıyorsa aynı saatten yer. Gerçek paralellik
ancak **bağımsız bir dilim** devredilirse oluşur — en uygun aday web sitesinin
tamamıdır (B kovası, 114 puan).

**K3 — Kapsam kırpmak.** §11.B'nin dört konusu zaten Faz 1 dışındadır; ilk
kırpılacak yer orası değildir.

### J.10.6 Kalibrasyon protokolü

Bu tahmin ölçülmeden güncellenemez. Ölçüm tasarımı:

| | |
|---|---|
| **Ne ölçülür** | Tamamlanan her kalem için koordinasyon meşgul saati + kalemin bandı |
| **6. hafta** | Erken sinyal. Karar alınmaz |
| **12. hafta** | Asıl kalibrasyon: bant başına gerçekleşen saat hesaplanır, bantlar güncellenir, kalan iş yeniden hesaplanır |
| **12. hafta kararı** | Gerçekleşen hız normal senaryonun %120'sini aşıyorsa hangi kaldıraç (J.10.5) çekilir |

⚠️ **Tuzak:** İlk 2–3 ay ortalamanın altında seyreder — omurga henüz oturmamıştır.
6. haftada görülen "normalin %140'ındayız" tablosu beklenen davranıştır.
**Bu veriden doğrusal ileriye dönük hesap yapılmaz;** panik kararı tam burada
verilir ve yanlış olur.

### J.10.7 Henüz dahil olmayanlar

1. **Katmanlı mimari (Corex) etkisi** — tahminen %30, yalnızca standart inşa ve
   yargı yoğun sınıflara uygulanır (454 + 106 = 560 puan); tasarım, bulunurluk
   ve devreye alma bundan etkilenmez.
2. **Takvim çevrimi** — paralellik sınırları ve bekleme süreleri (ödeme
   sağlayıcı hesap onayı ×2 tüzel yapı, uygulama mağazası incelemesi, e-posta
   politikası kademeli sıkılaştırma, hukukçu dönüşü, kuşak verisi girişi).
3. **Proje yönetimi %15** — J.8'de tanımlıdır, adam-gün rakamlarına eklenmemiştir.

---

## J.11 Müzakere konularının deltaları (§11.B)

### J.11.1 Amaç

§11.B'deki dört konu Faz 1 kapsamında **değildir** ve J.2–J.10'daki hiçbir sayıya dahil değildir. Kapsam toplantısında biri Faz 1'e alınmak istenirse süre etkisinin anında söylenebilmesi için her biri ayrı delta olarak kırılmıştır.

Kırılım, kesin kapsamla **aynı ölçek ve aynı beş kova** merceğiyle yapılmıştır (J.1). Kalem numaraları `T<konu>-<kova>.<sıra>` biçimindedir; kova harfleri J.1 ile aynıdır (A mobil, B web, C panel, D altyapı).

Adam-gün değerleri J.10.3'teki bant çarpanlarıyla, PERT beklenen değeri (J.10.4) üzerinden hesaplanmış ve proje yönetimi %15 eklenmiştir.

### J.11.2 Özet

| Konu | Puan | +Adam-gün | Faz 1 tabanına etkisi |
|---|---|---|---|
| **T3** Basit yapay zekâ asistanı | 31 | +11 | +%5 |
| **T2** Basit video | 34 | +14 | +%5 |
| **T1** Açık grup sohbeti | 44 | +18 | +%7 |
| **T4** Online shop (içeride) | 123 | +53 | +%19 |
| **Dördü birden** | **232** | **+96** | **+%37** |

Dördü de kapsama girerse: taban 634 → **866 puan**, iç planlama 206 → **~302 adam-gün**.

> **Uyarı — bu satırlar toplanabilir değildir.** Örtüşmeler J.11.8'de.

---

### J.11.3 T1 — Açık grup sohbeti (44 puan · +18 adam-gün)

Kapsam varsayımı: §11.B/1'de sıralanan koruma koşulları **dahildir.** Onlarsız puanlamak sahte bir ucuzluk üretir; koşulsuz açık sohbet zaten önerilmemektedir.

| # | Kalem | Açıklama | Beden | P |
|---|---|---|---|---|
| T1-A.1 | Kanal listesi ve kanal görünümü | Yaşa göre ayrılmış kanallar, katılım durumu | M | 3 |
| T1-A.2 | Mesaj akışı | Gönderme, alma, canlı güncelleme; altyapı T1-D.1'de | L | 5 |
| T1-A.3 | Bildir / engelle / şikayet akışı | Üyenin kullandığı koruma araçları | M | 3 |
| T1-A.4 | Okunmamış göstergesi | Bildirim bağlantısı; gönderim altyapısı D.3'te | XS | 1 |
| T1-C.1 | Kanal tanımlama ve yaş kuralları | Hangi yaş grubu hangi kanalda | M | 3 |
| T1-C.2 | Moderasyon kuyruğu | Şikayet, sustur, sil, engelle | L | 5 |
| T1-C.3 | Sohbet arşivi ve arama | Kayıt görüntüleme | S | 2 |
| T1-D.1 | Gerçek zamanlı mesajlaşma altyapısı | Bağlantı yönetimi, teslim garantisi, sıralama, çevrimdışı kuyruk | XL | 8 |
| T1-D.2 | Mesaj saklama ve arşiv ⚖️ | Denetim izi D.5.3'ü kullanır | M | 3 |
| T1-D.3 | Yaş bazlı erişim + yetişkin–çocuk 1:1 engeli | §11.B/1'in çekirdek koruma kuralı | L | 5 |
| T1-D.4 | İçerik filtresi | Kelime listesi, otomatik işaretleme | M | 3 |
| T1-D.5 | DSA mekanizmasının genişletilmesi ⚖️ | D.8.7 mevcut; kullanıcı içeriğine genişler | S | 2 |
| T1-D.6 | Veli onayının sohbete genişletilmesi ⚖️ | D.8.3 mevcut; bir izin daha | XS | 1 |
| | **Toplam** | | | **44** |

**Kapsam dışı:** Görsel ve medya paylaşımı. İstenirse +3 puan.

> **Görüşülecek — antrenörle doğrudan iletişim kanalı.** Üyenin kendi
> antrenörüyle doğrudan iletişim kurabileceği bir kısayol/kanal talep
> listesinin 7. maddesindeki "Kommunikation" başlığıyla örtüşür. Teknik
> boyutu küçüktür (kanal altyapısı zaten kurulu — istenirse +3 puan), ancak
> **T1-D.3 ile doğrudan çelişir:** o kalem yetişkin–çocuk arasında birebir
> özel mesajlaşma bulunmamasını şart koşuyor.
> Tartışılacak seçenekler: (a) reşit üyelerle doğrudan, çocuklarda kanal
> veliye açılır · (b) antrenör–çocuk yazışması veliye görünür ve arşivlenir ·
> (c) kanal yapılandırılmış konu başlıklarıyla sınırlı, serbest metin değil.
> Karar toplantıda verilecektir. Seçim yapılmadan taahhüt verilmemelidir —
> çocuk koruma yükümlülüğü sözleşmeyle tümüyle devredilemez.

> **Puanlanmayan yük — müşteri tarafında.** Kalıcı moderasyon sorumlusu gerekir (§11.B/1). Bu Soluty'nin iş kalemi değildir ama kararın gerçek maliyetinin parçasıdır.

---

### J.11.4 T2 — Basit video görüntüleme ve depolama (34 puan · +14 adam-gün)

Kapsam varsayımı: Panelden yükleme, depolama, uygulamada oynatma. Merkezî arşiv, etiketleme, arama ve izlenme analitiği **dahil değildir** — bunlar Faz 5'tir.

| # | Kalem | Açıklama | Beden | P |
|---|---|---|---|---|
| T2-A.1 | Video oynatıcı ekranı | Tekniğe bağlı oynatma | M | 3 |
| T2-A.2 | Oynatma durumları | Yükleniyor, hata, ağ değişimi | S | 2 |
| T2-C.1 | Video yükleme arayüzü | İlerleme, iptal, yeniden deneme | L | 5 |
| T2-C.2 | Tekniğe bağlama | C.4.1 mevcut; bağlantı alanı eklenir | S | 2 |
| T2-C.3 | Video listesi, değiştirme, silme | | S | 2 |
| T2-D.1 | Depolama ve dağıtım altyapısı | | L | 5 |
| T2-D.2 | Kodlama ve işleme hattı | Ham video doğrudan oynatılamaz | XL | 8 |
| T2-D.3 | Erişim kontrolü | Yetkili üye; bağlantı sızıntısı engeli | L | 5 |
| T2-D.4 | Depolama ve trafik kotası izleme | Süregelen gider uyarısı | S | 2 |
| | **Toplam** | | | **34** |

> **"Basit"in en pahalı yeri T2-D.2'dir.** Farklı cihazlardan yüklenen ham video, işlenmeden oynatılamaz. Yalnızca hazır ve uyumlu dosya kabul edilirse bu kalem düşer → **26 puan / ~11 adam-gün.** Bu durumda yükleme sorumluluğu Elite'e geçer.

> **Puanlanmayan yük — müşteri tarafında.** Depolama ve trafik sürekli bir işletme gideridir. Ayrıca içerikte görünen üyelerin ve çocukların görüntü hakkı hukukçuya sorulmalıdır (EK-G).

---

### J.11.5 T3 — Basit yapay zekâ asistanı (31 puan · +11 adam-gün)

Kapsam varsayımı: Sık sorulan sorulara cevap veren, **üye verisine bağlanmayan** asistan; yalnızca mobil uygulamada. Web sitesindeki destek asistanı dahil değildir (§5.2 kapsam sınırı). Sistemin verisiyle konuşan kapsamlı asistanlar Faz 3'tür.

| # | Kalem | Açıklama | Beden | P |
|---|---|---|---|---|
| T3-A.1 | Sohbet arayüzü | Mesaj listesi, giriş alanı, yanıt göstergesi | M | 3 |
| T3-A.2 | Kaynak gösterimi | Cevabın dayandığı bilgi | S | 2 |
| T3-A.3 | İnsana yönlendirme | Cevaplayamadığında sınır durumu | S | 2 |
| T3-C.1 | Bilgi tabanı yönetimi | Soru-cevap girme, düzenleme, üç dil | L | 5 |
| T3-C.2 | Konuşma kayıtları | Cevaplanamayan soruların tespiti | M | 3 |
| T3-D.1 | Asistan servisi entegrasyonu | İstem tasarımı dahil | L | 5 |
| T3-D.2 | Bilgi tabanı erişim katmanı | | M | 3 |
| T3-D.3 | Güvenlik sınırları | Kapsam dışı soru, veri sızıntısı, kötüye kullanım | L | 5 |
| T3-D.4 | Kullanım ölçümü ve maliyet tavanı | | S | 2 |
| T3-D.5 | Yapay zekâ bildirimi ⚖️ | Karşıdakinin asistanla konuştuğunun bildirilmesi | XS | 1 |
| | **Toplam** | | | **31** |

> **Puanlanmayan yük — müşteri tarafında.** Asistan sürekli bir kullanım gideri doğurur. Ayrıca bilgi tabanının güncel tutulması Elite'in işidir; güncellenmeyen bir asistan yanlış bilgi verir.

---

### J.11.6 T4 — Online shop, platformun içinde (123 puan · +53 adam-gün)

Kapsam varsayımı: §6'da tanımlanan Faz 2 önerisinin Faz 1'e alınması. §5.7 ödeme rayını zaten kurduğu için bu **§6'nın tamamı değil, üzerine binen kısımdır.**

| # | Kalem | Açıklama | Beden | P |
|---|---|---|---|---|
| T4-A.1 | Katalog | Kategori, liste, filtre, arama | L | 5 |
| T4-A.2 | Ürün detayı | Varyant seçimi, görsel galerisi, stok durumu | L | 5 |
| T4-A.3 | Sepet | Çok kalemli, varyantlı, miktar, stok kontrolü | L | 5 |
| T4-A.4 | Sipariş akışı | Teslim yöntemi (salondan / kargo), adres | L | 5 |
| T4-A.5 | Siparişlerim | Liste, durum takibi | M | 3 |
| T4-A.6 | İade talebi akışı | Ürün iadesi; para iadesi §5.7'de | M | 3 |
| T4-A.7 | Ön sipariş katılım akışı | Kulüp tişörtü, takım forması | M | 3 |
| T4-B.1 | Katalog ve ürün detayı (web) | | L | 5 |
| T4-B.2 | Sepet ve sipariş akışı (web) | | L | 5 |
| T4-B.3 | Siparişlerim (web) | | S | 2 |
| T4-B.4 | Ürün sayfalarının arama görünürlüğü | Yapısal veri: ürün, teklif, stok durumu | M | 3 |
| T4-C.1 | Ürün tanımlama | Kategori, açıklama, üç dil | L | 5 |
| T4-C.2 | Varyant yönetimi | Beden/renk matrisi, varyant bazlı fiyat ve stok | XL | 8 |
| T4-C.3 | Ürün görseli yönetimi | | M | 3 |
| T4-C.4 | Stok takibi | Düşük stok uyarısı, stok düzeltme | L | 5 |
| T4-C.5 | Sipariş yönetimi | Durum akışı, hazırlama listesi, teslim işaretleme | XL | 8 |
| T4-C.6 | Ürün iadesi işleme | Fiziksel iade ve stoğun geri alınması | L | 5 |
| T4-C.7 | Ön sipariş kampanya yönetimi | Toplama, eşik, üretim tetiği | L | 5 |
| T4-C.8 | Üyeye özel fiyat kuralları | | M | 3 |
| T4-C.9 | Ürün satış raporlaması | İki tüzel yapı ayrımıyla | M | 3 |
| T4-D.1 | Ürün, varyant ve stok veri modeli | | L | 5 |
| T4-D.2 | Stok eşzamanlılığı ve rezervasyon | Aynı anda gelen iki sipariş | L | 5 |
| T4-D.3 | Sipariş durum makinesi | | L | 5 |
| T4-D.4 | Cayma hakkı ⚖️ | 14 gün, iade akışı | M | 3 |
| T4-D.5 | Fiyat gösterimi mevzuatı ⚖️ | Birim fiyat, KDV, kargo gösterimi | M | 3 |
| T4-D.6 | Gelirin ikinci tüzel yapıya yönlendirilmesi ⚖️ | §5.7'de mimari hazır; burada fiilen devreye girer | L | 5 |
| T4-D.7 | Ürün için ayrı fatura numara aralığı ⚖️ | GoBD | M | 3 |
| T4-D.8 | Kargo entegrasyonu ve gönderi takibi | | L | 5 |
| | **Toplam** | | | **123** |

> **Ön koşul — B19 ve B20.** Kaç ürün kalemi satılacağı (20 mi, 200 mü) ve ürün görselleri/metinlerinin kimde olduğu açıktır. İkincisi puanı değil **lansmanı** etkiler: boş katalog yayına alınamaz.

---

### J.11.7 T4a — Harici tedarikçiyle bağlantı: puanlanmamıştır

§11.B/4'ün ikinci yolu, harici tedarikçinin sistemiyle bağlantı kurmaktır. Bu **bilinçli olarak puanlanmamıştır.**

1. **Ön koşul görülmemiştir.** Bağlanılacak sistemin çalışır ve belgelenmiş bir teknik arayüzü olduğu doğrulanmadan verilecek her sayı uydurma olur.
2. **Daha önemlisi: A12'yi bozar.** Faz 1'in temel ilkesi hiçbir dış sisteme bağlı olmamasıdır (§5.6). Bu bağlantı Faz 1'e alınırsa teslim tarihi bir başkasının takvimine bağlanır — ve bu, iş yüküyle ölçülemeyecek bir risktir.

Müşteriye söylenecek olan bir süre değil, bir sıradır: **önce arayüzün varlığı görülür, sonra konuşulur.**

---

### J.11.8 Toplantıda dikkat edilecek üç nokta

**1 — Deltalar toplanabilir değildir.** Birden fazla konu seçilirse üst üste binen kalemler vardır: T2 ve T4 medya ve depolama altyapısını paylaşır; T1 ve T3 içerik güvenliği tarafında kısmen örtüşür. Birlikte seçilirlerse toplam, satırların toplamından bir miktar düşüktür. J.11.2'deki "dördü birden" satırı bu nedenle üst sınırdır.

**2 — Adam-gün etkisi takvim etkisi değildir.** T4 bağımsız bir dilimdir; ayrı yürütülebilir ve K2 kaldıracının (J.10.5) doğal hedefidir. T1 ise omurgaya gömülüdür — kimlik, yetki ve bildirim katmanlarına dokunur, dolayısıyla takvimi adam-gün oranından fazla uzatır. Bu ayrım takvim çevriminde ele alınacaktır.

**3 — Üç konunun süregelen maliyeti müşteri tarafındadır.** T1 kalıcı moderasyon sorumlusu, T2 depolama ve trafik gideri, T3 kullanım gideri doğurur. "Bir kez yaptıralım" çerçevesiyle bakılırsa yanlış karar verilir; bu yükler toplantıda açıkça konuşulmalıdır.

---

*EK-J sonu*

*Belge sonu — v2.16 ÇALIŞMA DRAFT*
