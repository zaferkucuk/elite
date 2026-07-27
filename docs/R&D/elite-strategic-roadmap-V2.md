# Elite Kickboxing — Stratejik Yol Haritası

**Sürüm:** 2.5 — **ÇALIŞMA DRAFT (Türkçe)**
**Tarih:** 27 Temmuz 2026
**Hazırlayan:** Soluty GmbH
**Durum:** İç çalışma sürümü. Müşteri sürümü Almanca (formal *Sie*) olarak ayrıca hazırlanacaktır.

> v1 (`elite-strategic-roadmap.md`) arşiv olarak korunur.
> **v2.1:** Rezerve edilebilir hizmet, ödeme görünürlüğü, §5.6, §11.
> **v2.2:** Teknik videoları — Faz 1 *tüketim*, Faz 5 *yönetim*.
> **v2.3:** Ödeme ve ticari akışlar (§5.7); süre/kapsam savunması (EK-F).
> **v2.4:** Devreye alma ve veri aktarımı (§5.8).
> **v2.5:** **Müşteri (Oğuz) cevapları işlendi** — ders bazlı katılım kaydının mekanizması netleşti (§5.1), iptal akışı revize edildi (§5.5, D6), ödeme görünürlüğü belirsizliği işaretlendi (§5.6, B14).
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

Üye kayıtları ve üyelik durumu · Aidat tahsilatı (SEPA) ve ihtar akışı · Turnike ile giriş kontrolü, kart ile dolap kilitleme · Kasa, ürün ve stok · Yasal iptal butonu · Muhasebe verisi aktarımı

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

**Biz kurarız:** Üyenin yüzü (mobil uygulama) · Dış dünyanın yüzü (web sitesi) · Elite'i Elite yapan katman (kuşak, sınav, gelişim) · Dijital sözleşme akışı — **kuruluş, yenileme ve fesih dahil** · **Aidat dışı gelirin aktığı ticari akış** · Bunları yöneten kumanda odası

İki sistem birbirinin yerine geçmez. **Birbirini tamamlar.**

---

## 4. Yol Haritası

| Faz | Ad | Odak |
|---|---|---|
| **Faz 1** | **Dijital Üye Deneyimi Omurgası** | Mobil uygulama + web sitesi + yönetim paneli + dövüş sporu katmanı + ticari akış |
| Faz 2 | Online Shop | Ürün satışının platforma bağlanması |
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
> Bu kayıt antrenör tarafından işaretlenebilir, ya da üye tarafından uygulama üzerinden bildirilebilir. Yöntem, turnikenin yerine geçmez — kuşak sisteminin ihtiyaç duyduğu farklı bir bilgiyi üretir.

**Haberler ve Bildirimler** — Kapalı günler · İptal edilen dersler · Duyurular · **Push**

**Seminerler ve Etkinlikler** — Liste · Antrenör ve içerik bilgisi · **Kayıt ve bilet satışı** *(§5.7)* · Takvim

**Sınav Sistemi ve Teknikler** — Sınav takvimi · Sınava kayıt · Kuşak ilerlemesi · **Kuşağa bağlı teknik listesi + video** *(§5.4)*

**Antrenör Profilleri** — Tanıtımlar ve uzmanlık alanları

> **Yapay zekâ asistanı:** Talep listesindeki *"opsiyonel yapay zekâ sohbet botu"* Faz 3'e aittir. Bir asistan ancak sisteminizin verisiyle konuştuğunda değerlidir. **Faz 1'de bağlanacağı yer hazırlanır; asistan Faz 3'te gelir.**

**Çocuk ve Ebeveyn Alanı** — Veli hesabı + çoklu çocuk profili · Çocuğun katılımı · Gelişimi · Sınav tarihleri

> Bu alan bir kolaylık değil, **kimlik mimarisinin parçasıdır.** "Tek giriş → birden çok profil" sonradan eklenemez. Ayrıca ödeme yapan veli, antrenman yapan çocuktur.

**Kişisel Antrenman ve Rezerve Edilebilir Hizmetler** — PT rezervasyonu · Bireysel randevu · **Hizmet rezervasyon ve ödeme akışı** *(§5.7)*

> Elite'in ne satacağına biz karar vermeyiz. Motoru kurarız, içeriği Elite doldurur.
> **Kapsam sınırı:** Sağlık verisi içeren hizmetler (fizyoterapi, beslenme) Faz 1 dışıdır.

**Ödeme ve Aidat Görünürlüğü** — Aidat durumu · Fatura ve ödeme geçmişi *(koşullu — §5.6)*

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

İçerik yönetimi (web + app) · Ders programı ve doluluk · Kuşak ve sınav yönetimi · Teknik tanımlama ve video bağlantısı · Seminer, etkinlik ve **bilet** tanımlama · Rezerve edilebilir hizmet tanımlama · **Satış, ödeme ve iade takibi** *(§5.7)* · Duyuru ve bildirim · **Dijital sözleşme, yenileme ve fesih takibi** · Üye gelişim görünümü

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

**Teknik videoları — Faz 1'in sınırı:** Panelden bir tekniğe **video bağlantısı iliştirilir**; üye tekniğe dokunur, video oynar.
Faz 1'de **yok** (Faz 5'e ait): video yükleme/işleme/barındırma · medya kütüphanesi · izlenme analitiği · evde antrenman **programları** *(müfredat, video değil)*

> **Zarif bozulma:** Video, tekniğin **opsiyonel** niteliğidir. Elite on video çekerse on teknikte video görünür; kalanında yalnızca metin. **"Yakında" ekranı yok, boş bölüm yok.**

---

### 5.5 Dijital Sözleşme Akışı

**Bugün:** Kâğıt → elle doldurma → imza → tarama → yükleme.
**Yarın:** Web veya tabletten dijital giriş → dijital imza → sisteme akış.

Üyelik başvurusu (web + tablet) · Dijital imza · Sözleşme süresi ve bitiş tarihi takibi · Bitiş uyarısı · **Yenileme akışı** · **Fesih (Kündigung) akışı**

**Sözleşme bizim tarafımızda oluşur ve yönetilir.** Üye, üyelik durumunu ve sözleşme bilgilerini yönetebildiği tek yer bizim uygulamamızdır — çünkü üyenin doğrudan erişebildiği tek arayüz odur.

> Bu yalnızca kâğıdı dijitale taşımak değildir. Üyelik kararı çoğu zaman salonda değil, akşam evde verilir. O anda kâğıt form doldurmaya gelmesi gereken kişi, çoğu zaman hiç gelmez. **Dijital sözleşme bir kâğıt işi değil, bir dönüşüm adımıdır.**

#### Fesih (Kündigung) — üyenin tek temas noktası

Üye uygulamayı kullanıyor, üyeliğini bizim sistemimizden başlatıyor. Aynı mantıkla, **fesih talebi de bizim sistemimizden başlar** — üyenin erişebildiği tek arayüz burasıdır.

Fesih talebi kaydedildikten sonra, ilgili ödeme/tahsilat kaydının durmasını sağlayacak biçimde **mevcut sisteme bir olay olarak iletilir.** Bu iletimin elle mi, otomatik entegrasyonla mı yapılacağı, mevcut sistemin veri paylaşım koşullarına bağlıdır *(bkz. §5.6)* — ama fesih talebinin **nerede başladığı** nettir: üyenin kullandığı tek yer.

*(Bu akışın hukuki gerekliliklerle — örn. yasal iptal butonu erişilebilirlik şartı — nasıl örtüştüğü ayrıca değerlendirilecektir.)*

---

### 5.6 Mevcut Sisteme Bağlı Yetenekler

Faz 1'in bazı yetenekleri mevcut sistemin **veri paylaşım koşullarına** bağlıdır.

| Yetenek | Neden bağlı |
|---|---|
| Dijital sözleşmenin tahsilatla buluşması | Yeni üye verisi mevcut sisteme yazılmalı |
| **Fesih talebinin tahsilatı durdurması** | Fesih olayının mevcut sisteme ulaşması gerekir — elle veya entegrasyonla |
| Ödeme ve aidat görünürlüğü | Aidat verisi mevcut sistemde |
| Üyelik durumu senkronizasyonu | Üye kaydı mevcut sistemde |

| Senaryo | Sonuç |
|---|---|
| **A — Karşılıklı veri akışı** | Tam dijital akış. *Hedeflenen.* |
| **B — Toplu aktarım** | Yarı dijital. Düzenli aralıklarla aktarım. |
| **C — Veri paylaşımı yok** | Dijital toplama + elle giriş. Üye yine dijital deneyim yaşar. |

**Her üç senaryoda da Faz 1 teslim edilir.** Değişen, akışın ne kadarının otomatik olacağıdır — üyenin gördüğü deneyim değil.

> **Not:** §5.7'deki ticari akış bu bağımlılığın **dışındadır** — mevcut sistemin yapabileceği bir şey değildir.
>
> **Not — ödeme görünürlüğü kapsamı netleştirilecek:** "Açık faturaların uygulamada görülüp ödenebilmesi" isteği iki farklı şeyi kastediyor olabilir: (a) mevcut sistemdeki aidat/fatura durumunun uygulamada gösterilmesi — bu senaryoya bağlıdır; (b) uygulama üzerinden yapılan yeni satışların (seminer, PT, ürün) ödemesi — bu zaten §5.7'nin parçasıdır ve mevcut sisteme bağlı değildir. İkisi ayrı konudur ve ayrı ayrı ele alınacaktır.

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

> Ödeme altyapısı sözleşmesi Elite tarafından imzalanır; kurulum (kimlik doğrulama ve onay) sağlayıcının takvimine bağlıdır.

**Elite ile temas eden herkes.** Bir kişi üye olmadan da temas edebilir — seminere katılır, ürün alır. Bu kişiler tek seferlik işlem olarak görülmez; sistemde tanınır ve zamanla üyeliğe dönüşebilir. **Seminer katılımcısı, yarının üyesidir.**

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
Ortak bir çalışmadır ve devreye alma takviminin parçasıdır.

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
- **Kâğıt sözleşme süreci biter — kuruluş, yenileme ve fesih dahil**
- **Veli, çocuğunun gelişimini görür**
- **Elite aidat dışında da gelir toplayabilir**
- Elite, üyesine **her gün ulaşabilecek bir kanala** sahip olur

Son iki madde Faz 2'nin de ön koşuludur.

---

## 6. FAZ 2 — Online Shop

Faz 1'de kurulan ticari akışın **ürün** tarafına açılması.

Ürün kataloğu · Uygulama içinden satın alma · Stok, sipariş, teslimat takibi · **İkinci tüzel yapının gelir ve muhasebe akışı** *(mimari Faz 1'de hazırlanır — §5.7)*

**Durum:** Belirsiz. Mevcut bir dış çalışma sürüyor. İki yol: mevcut çalışma platforma bağlanır, ya da tek omurga üzerinde yeniden kurulur. Karar Elite'e aittir.

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

Faz 1'de teknik videoları **gösterilir.** Faz 5'te video **bir varlık olarak yönetilir.**

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

## 11. Birlikte Netleştireceğimiz Konular

### 11.1 Topluluk ve Antrenman Partneri (Talep 9)

**Antrenman partneri bulma** üzerinde hemfikiriz — yapılandırılmış eşleştirme: kuşak seviyesi, kilo sınıfı, antrenman saatleri.

**Açık grup sohbeti** konusunda çekincemiz var. Elite'in uygulamasında çocuk üyeler var. Serbest ve açık bir grup sohbeti, Elite'i hukuken bir *barındırma sağlayıcısı* konumuna taşır:

- **Sorumluluk:** Kullanıcı içeriğinden doğan hukuki sorumluluk Elite'e geçer.
- **Moderasyon:** Çocukların bulunduğu sohbet ortamı sürekli gözetim gerektirir. Bu antrenörlerin işi olamaz.
- **Risk:** Yetişkinlerin ve çocukların serbestçe iletişim kurabildiği alan, taşınması gereken en ağır risktir.

**Önerimiz:** Sohbeti üyelerin zaten kullandığı yere bırakalım. Topluluk hissini başka yollarla kuralım — kuşak terfilerinin görünürlüğü, başarımlar, etkinlik katılımcı listeleri.

**Bu bir ret değil, bir koruma önerisidir.**

---

---

# EK — AÇIK KONULAR (İÇ)

> **Müşteri sürümünde yer almaz.**

## A. Kapsam kararları

| # | Konu | Durum | Karar |
|---|---|---|---|
| A1 | Topluluk / açık grup sohbeti | 🔄 Müzakerede | Faz 1'e alınmadı. Pozisyon §11.1'de. |
| A2 | Antrenman partneri arama | 🔄 Müzakerede | A1 ile masaya konacak. Riski yok. |
| A3 | "Ek hizmetler" | ✅ KAPANDI | Jenerik rezerve edilebilir hizmet akışı. Sağlık verisi kapsam dışı. |
| A4 | Ödeme / aidat görünürlüğü | ✅ KAPANDI | Kapsama alındı, **koşullu** (§5.6). **Ama kapsamı iki alt konuya ayrıldı — bkz. B14.** |
| A5 | Çocuk / ebeveyn alanı | ✅ KAPANDI | **Faz 1 çekirdeği** — kimlik mimarisi. |
| A6 | AI sohbet botu | ✅ KAPANDI | **Faz 3'te.** Faz 1'de bağlantı noktası. |
| A7 | Mobil uygulamada video | ✅ KAPANDI | **Faz 1 = tüketim, Faz 5 = yönetim.** Zarif bozulma. |
| A8 | Ticari ödeme rayı | ✅ KAPANDI | **Faz 1'e alındı (§5.7).** İki tüzel yapı baştan. **Para Soluty'den geçmez** (ZAG/BaFin). |
| A9 | Devreye alma / veri aktarımı | ✅ KAPANDI | **Faz 1'e alındı (§5.8).** Üç iş: veri aktarımı + kuşak verisi üretimi + 900 üyenin app'e alınması. V1'de hiç yoktu. |
| **A10** | **Fiziksel giriş / ders bazlı katılım kaydı** | ✅ **KAPANDI (müşteri teyidi ile)** | Fiziksel giriş-çıkış ve dolap kilidi **mevcut sistemde kalır** (müşteri teyit etti). Ders bazlı katılım kaydı **antrenör işaretlemesi veya üye bildirimi** ile toplanacak — barkod/QR okuma zorunlu değil. **Mekanizma netleştirilecek** (bkz. B15). |
| **A11** | **Fesih (Kündigung) akışının başlangıç noktası** | ✅ **KAPANDI — D6 revize edildi** | Fesih talebi **bizim sistemimizden başlar** (üyenin tek temas noktası). Mevcut sisteme **olay olarak iletilir** — elle mi, entegrasyonla mı iletileceği açık (bkz. B16). Bkz. `internal/centercom-integration.md` D6. |

## B. Yerinde keşifte doğrulanacaklar

| # | Konu |
|---|---|
| B1 | **Mevcut sistemin veri erişim / API politikası** — *en kritik.* Bkz. `internal/centercom-integration.md` |
| B2 | Muhasebe aktarımı aktif mi? → **birlikte aktive edilir** (güven hamlesi) |
| B3 | Ders/kurs yönetimi zayıf mı, kullanılmıyor mu? |
| B4 | Mevcut uygulamanın hangi yetenekleri açık? |
| B5 | **Aile hesabı mevcut sistemde var mı?** → yoksa veli–çocuk ilişkisi **yeniden kurulacak** |
| B6 | Sözleşme süreleri bugün nasıl takip ediliyor? |
| B7 | **Çocuk üye oranı ve yaş dağılımı** |
| B8 | ~~Ödeme görünürlüğü listede neden yok?~~ → **Cevaplandı, bkz. B14** |
| B9 | Elite'in mevcut teknik video arşivi var mı? |
| B10 | Bugün seminer/etkinlik ücreti nasıl tahsil ediliyor? |
| B11 | İkinci tüzel yapı kuruldu mu? Vergi/KDV durumu? |
| B12 | Üyelerin e-posta / telefon bilgisi güncel mi? |
| B13 | Kaç antrenör kuşak verisi girecek? Kuşak yapısı yazılı bir yerde var mı? |
| **B14** | **"Açık faturaları görme ve ödeme" tam olarak ne demek?** Mevcut sistemdeki aidat/fatura görünürlüğü mü (§5.6, veriye bağlı), yoksa uygulama üzerinden yapılan yeni satışların ödemesi mi (§5.7, zaten kapsamda)? Müşteriye netleştirilecek. |
| **B15** | **Ders bazlı katılım kaydı hangi yöntemle toplanacak?** Antrenör işaretlemesi mi, üye kendi bildirimi mi, ikisi birden mi? Kullanılabilirlik ve veri güvenilirliği açısından fark yaratır. |
| **B16** | **Fesih talebi mevcut sisteme nasıl iletilecek?** Elle personel girişi mi, otomatik entegrasyon yazması mı? Mevcut sistemin veri yazma politikasına bağlı (bkz. B1). |
| **B17** | **Yasal iptal butonu erişilebilirlik şartı** — sözleşme kuruluşu bizim platformumuzda olduğuna göre, fesih erişilebilirliğinin de bizim platformumuzda olması hukuken gerekli mi? **Hukukçuya danışılacak.** |

## C. Talep listesi izlenebilirlik

| # | Başlık | Yer |
|---|---|---|
| 1 | Profil + kuşak | Faz 1 — 5.1 / 5.4 |
| 2 | Antrenman planı ve ders kaydı | Faz 1 — 5.1 |
| 3 | Katılım ve antrenman geçmişi | Faz 1 — 5.1 |
| 4 | Haberler ve push | Faz 1 — 5.1 |
| 5 | Seminerler + **bilet** | Faz 1 — 5.1 / **5.7** |
| 6 | Sınav sistemi ve gelişim | Faz 1 — 5.1 / 5.4 |
| 7 | Antrenör profilleri | Faz 1 — 5.1 |
| 7b | *AI sohbet botu* | **Faz 3** ✅ |
| 8 | Çocuk ve ebeveyn alanı | Faz 1 — 5.1 ✅ |
| 9 | Topluluk / grup sohbeti | **§11.1 — müzakerede** 🔄 |
| 10a | *Teknik videoları (gösterim)* | **Faz 1 — 5.4** ✅ |
| 10b | *Video arşivi, evde antrenman programı* | **Faz 5** ✅ |
| 11 | Kişisel antrenman + ek hizmetler | Faz 1 — 5.1 / **5.7** ✅ |
| 12 | Dijital doküman yönetimi | Faz 1 — 5.1 / 5.5 ✅ **(yenileme + fesih dahil, müşteri teyidi)** |
| 13 | Shop bağlantısı | **Faz 2** *(ray Faz 1'de)* |
| 14 | Motivasyon / başarımlar | Faz 1 — 5.1 |

## D. Soluty'nin eklediği (talep listesinde yok)

| Kapsam | Gerekçe |
|---|---|
| **Yönetim paneli** | Her maddenin bir yöneteni olmalı. Zorunlu. |
| **Modern web sitesi** | Müşteri "can alıcı" dedi. **V1'de teklif dışıydı (Faz 3).** |
| **Deneme dersi akışı** | Bugünkü en zayıf nokta. |
| **Dijital sözleşme** | Kâğıt biter + dönüşüm adımı. **Müşteri bağımsız olarak aynı kapsamı istedi (kuruluş, yenileme, fesih, süre görünürlüğü).** |
| **Ödeme / aidat görünürlüğü** | Eksikliği geri döner. Koşullu. Kapsamı netleştirilecek (B14). |
| **Ticari ödeme rayı** | Müşteri bağımsız olarak istedi ("uygulama üzerinden ek satış"). |
| **CenterCom entegrasyon katmanı** | **V1'de hiç yoktu.** |
| **Devreye alma + veri aktarımı** | **V1'de hiç yoktu.** |

---

## F. ⚠️ SÜRE VE KAPSAM SAVUNMASI (İÇ — KRİTİK)

> **Bunu unutma.** Müşteri "CenterCom çoğu şeyi yapıyor, siz tasarruf edeceksiniz" bekliyor.
> **Gerçek: süre kısalmıyor.**

### F.1 Bağlam

**Önceki teklif:** V1 Faz 1 (web tabanlı yönetim uygulaması) + V1 Faz 2 (mobil app) = **8 ay**
**Kritik:** V1'de **web sitesi Faz 3'tü — teklifin DIŞINDAYDI.**

### F.2 Çıkanlar — gerçek tasarruf

| Kapsam | Tasarruf |
|---|---|
| SEPA tahsilat motoru (mandate, tekrarlayan tahsilat, XML, banka dosyası) | ✅ Gerçek |
| Mahnwesen / kademeli ihtar | ✅ Gerçek |
| **Turnike / RFID / dolap donanım entegrasyonu** — müşteri teyit etti, mevcut sistemde kalıyor | ✅✅ **Büyük** — marka tespiti, API araştırması, saha testi, risk |
| POS / kasa / stok — müşteri teyit etti | ✅ Gerçek |
| Muhasebe / DATEV (V1 Faz 4) | ✅ Zaten teklif dışıydı |

### F.3 Girenler — yeni iş

| Kapsam | Etki |
|---|---|
| **Yeni web sitesi** — V1'de Faz 3, **teklif dışı** | 🔴 **Büyük** |
| **Mobil app zenginleşti** — 14 madde: veli alanı (kimlik mimarisi), rozet, teknik video, hizmet rezervasyonu, sınav | 🔴 Orta-büyük |
| **Ticari ödeme rayı** — kart, misafir, iade, KDV, GoBD, **iki tüzel kişilik yönlendirmesi** — müşteri bağımsız istedi | 🔴 Orta-büyük |
| **Dijital sözleşme fesih akışı** — müşteri talebiyle Faz 1'e girdi, mevcut sistemde bırakılan §312k butonundan farklı bir iş | 🔴 Orta |
| **CenterCom entegrasyon/senkron katmanı** — V1'de yoktu | 🔴 Orta |
| **Mutabakat / drift tespiti** — V1'de yoktu | 🔴 Küçük-orta |
| **⚠️ DEVREYE ALMA — V1'de hiç yoktu** | 🔴🔴 **Büyük, üç parça:** |
| ↳ *Veri aktarımı* — 900 kayıt, **veri temizliği**, tekrar kayıtlar, ölü üyeler, bayat adresler | 🔴 Orta |
| ↳ *Veli–çocuk ilişkilerinin yeniden kurulması* — CenterCom'da aile hesabı yoksa **dedektiflik işi** | 🔴 Orta |
| ↳ *Kuşak verisinin sıfırdan üretilmesi* — 900 üye, hiçbir yerde yok. **Toplu giriş aracı da yapılacak.** | 🔴 Orta-büyük |
| ↳ *900 üyenin uygulamaya alınması* — davet, kimlik doğrulama, aktivasyon, veli–çocuk eşleştirme, kampanya, destek | 🔴🔴 **Gizli canavar** |

> **Devreye alma teknik değil ticari bir adımdır.** 900 üyeye ürün satma hikayesi, 900 üyenin uygulamada olmasına bağlıdır. **Adoption = iş modeli.**

### F.4 Savunma argümanları

**1 — Ödeme: çekirdek aynı, ray değişti**
Ödeme sisteminin **~%70'i raydan bağımsızdır:** fatura, ödeme kaydı, GoBD makbuz, mutabakat, iade takibi, raporlama, muhasebe kaydı. Bu çekirdek **her iki durumda da** kurulur.
- CenterCom'a verdiğimiz: **SEPA rayı** (mandate, XML, dunning)
- Geri aldığımız: **Kart rayı** (PSP, misafir ödeme, iade, KDV, **iki tüzel kişilik yönlendirmesi**)

**Kart rayı SEPA rayından daha basit değildir.**

**2 — Web sitesi teklife girdi.** V1'de Faz 3'tü, 8 aylık teklifin dışındaydı.

**3 — Mobil app büyüdü.** V1'de "üye self-servis" seviyesindeydi. Şimdi 14 maddelik zengin ürün.

**4 — Entegrasyon işi V1'de hiç yoktu.** CenterCom V1'de yoktu. Senkron, mutabakat, drift tespiti, aktarım kuyruğu — **tamamen yeni.**

**5 — Devreye alma V1'de hiç yoktu.** V1 sıfırdan sistem varsayıyordu. Şimdi 900 üye taşınacak, kuşak verisi üretilecek, **900 kişi uygulamaya alınacak.**

**6 — Üye master bizde kaldı (D3).** CenterCom'a giden **tahsilat**tı, **üye yönetimi değil.**
*Müşteri "CenterCom üye tutuyor, siz tutmayın" derse:* app CenterCom paylaşsa da paylaşmasa da çalışmalı · üye kendi profilini düzenleyebilmeli · kuşak/sınav verisinin asılacağı bir üye kaydı gerekli, CenterCom onu asla tutmayacak.

**7 — Müşterinin kendi cevapları savunmayı güçlendiriyor.** Oğuz bağımsız olarak istedi: dijital sözleşme (kuruluş + yenileme + **fesih**), uygulama üzerinden satış, ödeme görünürlüğü. **Bunların hiçbiri bizim önerdiğimiz "ekstra" değil — müşterinin kendi önceliği.** Süre savunmasında bu, en güçlü argümandır: kapsam bizim şişirmemiz değil, müşterinin kendi isteği.

### F.5 Müşteriye anlatım — kazanan çerçeve

> ❌ "Tasarruf yok."
> ✅ **"Tasarruf var — ama cebimize koymadık. Sizin daha çok istediğiniz şeye yatırdık."**

**Çıkan:** donanım entegrasyonu, SEPA motoru, kasa, ihtar akışı
**Giren:** **web sitesi** (istediniz) · **zengin mobil app** (istediniz) · **ticari ödeme rayı** (istediniz) · **dijital sözleşme + fesih** (istediniz) · **devreye alma** (olmadan hiçbiri işe yaramaz)

**Aynı süreye daha fazla değer — ve bu değerin çoğu sizin kendi önceliğiniz.**

### F.6 Yeni tahmin

⚠️ **Henüz yapılmadı.** Yapılırken F.2 ve F.3'e bakılacak.
**Beklenti: 8 ay civarı veya üstü. Kısaltma savunulamaz.**

---

## G. Dil kontrolü (Almanca sürüm öncesi)

- ❌ Yasaklı: *Code, Programmierung, Entwickler, Feature, Modul*
- ✅ Tercih: *Plattform, System, Katman, Bileşen, Akış, Yetenek*
- ❌ **"Sahip" hiçbir yerde kullanılmaz** → *yönetici / Geschäftsführer / Leitung*
- ❌ Süre ve maliyet müşteri sürümünde **yer almaz**
- ⚠️ Mevcut sistemin adı müşteri belgesinde nasıl anılacak — **onaya tabi**
- ⚠️ §11.1 hukuki çerçevesi, 16 yaş altı veli onayı, §5.7 GoBD iddiaları, **§5.5 fesih erişilebilirlik gerekliliği (B17)** — **hukukçuya**
- ⚠️ PSP ve video platformu adları **anılmaz**
- ✅ Yapay zekâ her zaman "asistan"
- ✅ **Gelir vaadi verilmez.** Kaldıraç gösterilir, rakam uydurulmaz.

---

*Belge sonu — v2.5 ÇALIŞMA DRAFT*
