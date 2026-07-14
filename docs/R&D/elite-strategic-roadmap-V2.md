# Elite Kickboxing — Stratejik Yol Haritası

**Sürüm:** 2.3 — **ÇALIŞMA DRAFT (Türkçe)**
**Tarih:** 14 Temmuz 2026
**Hazırlayan:** Soluty GmbH
**Durum:** İç çalışma sürümü. Müşteri sürümü Almanca (formal *Sie*) olarak ayrıca hazırlanacaktır.

> **Çalışma notu:** Bu belge v1 yol haritasının yerini alır. v1 (`elite-strategic-roadmap.md`) arşiv olarak korunur.
> **v2.1:** Rezerve edilebilir hizmet akışı, ödeme görünürlüğü, mevcut sisteme bağlı yetenekler (§5.6), netleştirilecek konular (§11).
> **v2.2:** Teknik videoları — Faz 1'e *tüketim*, Faz 5'e *yönetim* (§5.4, §9).
> **v2.3:** **Ödeme ve ticari akışlar Faz 1'e eklendi (§5.7). Süre/kapsam savunması EK-F'ye işlendi.**
>
> *Açık Konular* bölümü yalnızca çalışma sürümüne aittir; müşteri sürümünde yer almaz.

---

## 1. Yönetici Özeti

Elite bugün çalışan bir operasyonel omurgaya sahip. Üyelik kayıtları, aidat tahsilatı, giriş kontrolü, dolap sistemi ve kasa süreçleri mevcut sistem üzerinde yürüyor — ve yürümeye devam edecek.

Eksik olan omurga değil. Eksik olan **üyenin gördüğü yüz** — ve o yüz üzerinden akabilecek gelir.

Bugün Elite'in üyesi, Elite'i telefonundan yaşayamıyor. Elite'i dışarıdan arayan bir insan, web sitesinden içeri giremiyor. Elite'in seminerine katılmak isteyen biri, bunu online yapamıyor. Ve Elite'i Elite yapan şey — kuşak, sınav, teknik gelişim — hiçbir sistemde yaşamıyor.

Kurmayı önerdiğimiz şey budur: **üye ile Elite arasındaki dijital köprü**, o köprünün üzerinde dövüş sporunun kendi dili, ve köprünün üzerinden akabilen **gelir.**

---

## 2. Başlangıç Noktası — Bugünün Resmi

### Çalışan taraf

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
| **Aidat dışı gelir** | Seminer, etkinlik, kişisel antrenman ve ürün için dijital satış kanalı yok |

---

## 3. Yaklaşımımız — Neyi *Yapmıyoruz*

Bir yol haritasının değeri, ne yapacağı kadar **ne yapmayacağıyla** ölçülür.

Mevcut sisteminizde çalışan hiçbir süreci yeniden kurmuyoruz. Çalışan bir omurganın üzerine ikinci bir omurga koymak size maliyet ve risk getirir; değer getirmez.

**Mevcut sistemde kalır:** Üye kayıtları ve durum yönetimi · Aidat tahsilatı, SEPA, ihtar süreçleri · Turnike, kapı ve dolap donanımı · Kasa, ürün, stok · Yasal iptal butonu · Muhasebe verisi aktarımı

**Biz kurarız:** Üyenin yüzü (mobil uygulama) · Dış dünyanın yüzü (web sitesi) · Elite'i Elite yapan katman (kuşak, sınav, gelişim) · Dijital sözleşme akışı · **Aidat dışı gelirin aktığı ticari akış** · Bunları yöneten kumanda odası

İki sistem birbirinin yerine geçmez. **Birbirini tamamlar.**

---

## 4. Yol Haritası — Genel Bakış

| Faz | Ad | Odak |
|---|---|---|
| **Faz 1** | **Dijital Üye Deneyimi Omurgası** | Mobil uygulama + web sitesi + yönetim paneli + dövüş sporu katmanı + ticari akış |
| Faz 2 | Online Shop | Ürün satışının platforma bağlanması |
| Faz 3 | Elite AI | Yapay zekâ destekli asistanlar |
| Faz 4 | İletişim Merkezi | Tüm iletişim kanallarının tek noktada toplanması |
| Faz 5 | Medya Kütüphanesi ve Sosyal Medya | Video arşivi yönetimi + sosyal medya operasyonu |

**Faz 1 temeldir.** Bu belgede yalnızca Faz 1 ayrıntılı tanımlanmıştır; Faz 2–5 yönü gösterir, taahhüt oluşturmaz.

---

## 5. FAZ 1 — Dijital Üye Deneyimi Omurgası

Faz 1, **tek bir sistemin üç yüzüdür.** Üç ayrı ürün değil; aynı omurganın üç farklı ekranda görünen hâlidir. Ders programı bir yerde değişir — her yerde değişir.

Bu üç yüzün içinden geçen bir katman vardır: **dövüş sporu katmanı.**

---

### 5.1 Üye Mobil Uygulaması

Elite'in en önemli önceliği. Üyenin cebindeki Elite.

#### Profil ve Gelişim
- Kişisel bilgiler ve üyelik durumu
- **Kuşak derecesi ve antrenman seviyesi**
- Üyelik başlangıcı · Kişisel gelişim çizgisi

#### Antrenman Planı ve Ders Kaydı
- Güncel ders programı · Derse kayıt · Doluluk göstergesi · Otomatik hatırlatmalar

#### Katılım ve Antrenman Geçmişi
- **QR kod ile antrenman check-in'i**
- Katılınan antrenmanların geçmişi · Antrenman istatistiği ve ilerleme

> **Neden QR, turnike varken?**
> Turnike *binaya girişi* kaydeder. QR check-in *hangi antrenmana katıldığını* kaydeder. İkisi farklı bilgidir — ve kuşak sisteminin ihtiyaç duyduğu ikincisidir. QR, turnikenin yerine geçmez; onun üzerine bir katman ekler.

#### Haberler ve Bildirimler
- Kapalı günler · İptal edilen dersler · Duyurular · Son dakika değişiklikleri · **Anlık bildirim (push)**

#### Seminerler ve Etkinlikler
- Seminer ve etkinlik listesi · Antrenör ve içerik bilgisi
- **Kayıt ve bilet satışı** *(bkz. §5.7)* · Etkinlik takvimi

#### Sınav Sistemi ve Teknikler
- Sınav takvimi · Sınava kayıt · Kuşak / seviye ilerlemesi · Sınav bilgilendirmeleri
- **Kuşak seviyesine bağlı teknik listesi — her tekniğe iliştirilebilen video** *(bkz. §5.4)*

#### Antrenör Profilleri
- Antrenör tanıtımları ve uzmanlık alanları

> **Yapay zekâ asistanı hakkında:** Talep listesindeki *"opsiyonel yapay zekâ sohbet botu"* Faz 3'e aittir. Bir asistan, ancak sisteminizin verisiyle konuştuğunda değerlidir. Faz 1 o veriyi üretir. **Faz 1'de asistanın bağlanacağı yer hazırlanır; asistanın kendisi Faz 3'te gelir.**

#### Çocuk ve Ebeveyn Alanı
- Veli hesabı altında birden çok çocuk profili
- Çocuğun katılım durumu · Antrenman gelişimi · Sınav tarihleri · Veli bilgilendirmesi

> **Not:** Bu alan bir ek kolaylık değil, **sistemin kimlik mimarisinin bir parçasıdır.** "Tek giriş → birden çok üye profili" yapısı sonradan eklenemez; kök seviyede kurulur. Ayrıca ödeme yapan veli, antrenman yapan çocuktur — Elite ile veli arasındaki tek doğrudan dijital kanal budur.

#### Kişisel Antrenman ve Rezerve Edilebilir Hizmetler
- Kişisel antrenman (PT) rezervasyonu · Bireysel randevu
- **Rezerve edilebilir hizmet akışı** — Elite panelden hizmet tanımlar (ad, süre, kapasite, antrenör, ücret); üye uygulamadan rezerve eder ve **öder** *(bkz. §5.7)*

> **Yaklaşım:** Elite'in ne satacağına biz karar vermeyiz. Motoru kurarız, içeriği Elite doldurur. Yeni bir hizmet türü eklemek yeni bir inşa işi değil, yeni bir kayıttır.
>
> **Kapsam sınırı:** Sağlık verisi içeren hizmetler (fizyoterapi, beslenme danışmanlığı, sakatlık takibi) Faz 1 dışındadır — özel nitelikli kişisel veri kategorisine girer.

#### Ödeme ve Aidat Görünürlüğü
- Aidat durumu · Fatura ve ödeme geçmişi

> Bu yetenek talep listesinde yer almıyor; ancak üyenin aidat durumunu görememesi eksiklik olarak geri döner. Kapsama alınmıştır — **gerçekleşme koşulu için bkz. §5.6.**

#### Dijital Belgeler
- Rıza ve muvafakat beyanları · Feragatnameler · Formlar · Dijital imza

#### Motivasyon
- 50 / 100 antrenman · Elite'te 1 yıl · İlk sınav geçildi · İlk seminere katılım · Doğum günü

---

### 5.2 Modern Web Sitesi

Elite'i dışarıdan arayan insanın ilk temas noktası. Bugün statik bir tanıtım sayfası; yarın **çalışan bir kapı.**

- **Deneme dersi akışı** — online kayıt, takvimden yer seçimi
- **Canlı ders programı** — mobil uygulamayla aynı kaynaktan beslenir
- **Üyelik başvurusu ve dijital sözleşme**
- **Seminer ve etkinlik kaydı — online ödeme dahil** *(bkz. §5.7)*
- Antrenör ve stüdyo tanıtımı · İçerik alanı (blog / haberler)
- Almanca / İngilizce / Türkçe

> İnsanlar Elite'i internetten buluyor. Bulduktan sonra ne yapacaklarını bilmiyorlarsa, o ziyaret kaybolur. Web sitesi bir broşür değil, **kazanım kanalıdır.**

---

### 5.3 Yönetim Paneli

Listedeki her başlığın bir yöneteni olmak zorundadır. Haberi kim girer? Sınav takvimini kim açar? Kuşak terfisini kim işler? Semineri kim tanımlar? Bileti kim satar?

Panel ayrı bir ürün değildir. **Uygulamanın kumanda odasıdır.**

- İçerik yönetimi (web + uygulama)
- Ders programı ve doluluk yönetimi
- Kuşak ve sınav yönetimi
- Teknik tanımlama ve tekniğe video bağlantısı iliştirme
- Seminer, etkinlik ve **bilet** tanımlama
- Rezerve edilebilir hizmet tanımlama
- **Satış, ödeme ve iade takibi** *(bkz. §5.7)*
- Duyuru ve bildirim gönderimi
- Dijital sözleşme ve belge akışı takibi
- Üye gelişim görünümü

**Panel, mevcut sistemin işini tekrar etmez.** Üye aidatı, turnike, kasa mevcut sistemde kalır. Panel yalnızca bizim kurduğumuz katmanı yönetir.

---

### 5.4 Dövüş Sporu Katmanı

Bu katman, sistemi standart bir spor salonu yazılımından ayıran şeydir.

- **Kuşak sistemi** (Graduierung) ve seviye hiyerarşisi
- **Teknik listeleri** — kuşak seviyesine bağlı
- **Teknik videoları** — her tekniğe bir video bağlantısı iliştirilebilir
- **Sınav planlaması** ve sınav günü akışı
- **Geçti / kaldı kaydı** ve kuşak geçmişi
- **Kuşak başına asgari antrenman kuralı**
- Sertifika

> Bugün bu bilgi hiçbir sistemde yaşamıyor. Antrenörlerin hafızasında ve kâğıt üzerinde duruyor. Bir üye kuşak atlamaya hazır mı — bu soru bugün sezgiyle cevaplanıyor. Yarın veriyle cevaplanacak.

#### Teknik videoları — Faz 1'in sınırı

**Video, tekniğin bir niteliğidir.** Video olmadan bir teknik listesi yalnızca bir isim listesidir.

Faz 1'de: panelden bir tekniğe **video bağlantısı iliştirilir**; üye teknik listesinde o tekniğe dokunur, video oynar.

Faz 1'de **yer almayanlar** (Faz 5'e aittir): video yükleme, işleme ve barındırma · merkezî medya kütüphanesi · izlenme analitiği · evde antrenman **programları** *(bunlar video değil, müfredattır)*

> **Tasarım ilkesi — zarif bozulma:** Video, tekniğin **opsiyonel** bir niteliğidir. Elite on video çekerse on teknikte video görünür; kalanında yalnızca metin durur. **"Yakında" ekranı yoktur, boş bölüm yoktur.**

---

### 5.5 Dijital Sözleşme Akışı

**Bugün:** Kâğıt sözleşme → elle doldurma → imza → tarama → sisteme yükleme.
**Yarın:** Web sitesinden veya stüdyodaki tabletten dijital giriş → dijital imza → sisteme akış.

- Üyelik başvurusu (web + tablet) · Dijital imza
- Sözleşme süresi takibi · Bitiş yaklaşırken uyarı · Yenileme akışı

**Sözleşme bizim tarafımızda oluşur ve yönetilir.** Veri oradan mevcut sisteme akar. Yön tek yönlüdür: **bizden mevcut sisteme.**

> Bu yalnızca kâğıdı dijitale taşımak değildir. Üyelik kararı çoğu zaman salonda değil, akşam evde verilir. O anda kâğıt form doldurmaya gelmesi gereken kişi, çoğu zaman hiç gelmez. **Dijital sözleşme bir kâğıt işi değil, bir dönüşüm adımıdır.**

*(Teknik gerçekleşme koşulu için bkz. §5.6.)*

---

### 5.6 Mevcut Sisteme Bağlı Yetenekler

Faz 1'in bazı yetenekleri, mevcut sistemin **veri paylaşım koşullarına** bağlıdır. Bunu şimdiden açıkça söylüyoruz.

| Yetenek | Neden bağlı |
|---|---|
| Dijital sözleşme akışının tahsilatla buluşması | Yeni üye verisi mevcut sisteme yazılmalı |
| Ödeme ve aidat görünürlüğü | Aidat verisi mevcut sistemde yaşıyor |
| Üyelik durumu senkronizasyonu | Üye kaydı mevcut sistemde tutuluyor |

| Senaryo | Sonuç |
|---|---|
| **A — Karşılıklı veri akışı mümkün** | Tam dijital akış. *Hedeflenen.* |
| **B — Yalnızca toplu aktarım mümkün** | Yarı dijital. Düzenli aralıklarla aktarım. Kâğıttan ileri. |
| **C — Veri paylaşımı mümkün değil** | Dijital toplama + elle giriş. Üye yine dijital deneyim yaşar. Yine de bugünkü süreçten ileridir. |

**Her üç senaryoda da Faz 1 teslim edilir.** Değişen, akışın ne kadarının otomatik olacağıdır — üyenin gördüğü deneyim değil.

> **Not:** §5.7'deki ticari akış bu bağımlılığın **dışındadır.** Bilet, kişisel antrenman ve hizmet satışı, mevcut sistemin yapabileceği bir şey değildir ve tamamen yeni platform üzerinde çalışır.

---

### 5.7 Ödeme ve Ticari Akışlar

Aidat tahsilatı mevcut sistemde kalır — orada iyi çalışıyor.

Ama Elite'in geliri yalnızca aidattan ibaret değil. Seminer, etkinlik, kişisel antrenman, ek hizmetler — ve ileride ürün satışı. **Bunlar mevcut sistemin yapabileceği şeyler değil.** Bunun için ayrı bir ticari akış gerekir.

**Faz 1'de kurulur:**

- Kart ile online ödeme
- **Üye ve üye olmayan (misafir) katılımcı** ödemesi
- Seminer ve etkinlik bileti
- Kişisel antrenman ve rezerve edilebilir hizmet ödemesi
- Fatura ve makbuz *(GoBD uyumlu)* ⚖️
- İptal ve iade akışı
- Satış ve gelir raporlaması

#### İki tüzel yapı — baştan kurulur

Elite'in **hizmet gelirleri** (seminer, kişisel antrenman) ile **ürün gelirleri** farklı tüzel yapılar üzerinden yürüyecek.

Sistem bunu **baştan taşıyacak şekilde** kurulur: üye tek bir uygulama görür; gelir arka planda doğru tüzel yapıya yazılır, doğru fatura kesilir, doğru muhasebeye akar.

**Bu, sonradan eklenebilecek bir düzenleme değildir.** Faz 1'de tek yapı kullanılsa bile, mimari iki yapıyı taşımaya hazır kurulur. Aksi hâlde Faz 2'de sistem yeniden yazılır.

#### Para akışı

Ödeme altyapısı **Elite'in kendi adına** kurulur. Para doğrudan Elite'e (ve ilgili tüzel yapıya) akar.

**Soluty akışı yönetir, paraya dokunmaz.**

> Bu bir tercih değil, doğru mimaridir. Ödeme altyapısı sözleşmesi Elite tarafından imzalanır; kurulum süreci (kimlik doğrulama ve onay) sağlayıcının takvimine bağlıdır.

#### Elite ile temas eden herkes

Bir kişi Elite'e üye olmadan da temas edebilir: bir seminere katılabilir, bir ürün alabilir, bir etkinliğe gelebilir.

Bu kişiler tek seferlik işlem olarak görülmez. Sistem içinde tanınır, ulaşılabilir kalır ve zamanla üyeliğe dönüşebilir. **Seminer katılımcısı, yarının üyesidir.**

---

### Faz 1 — İş Sonucu

- Üye Elite'i **telefonundan yaşar** — programı görür, derse kaydolur, gelişimini takip eder
- Yeni üye adayı **web sitesinden içeri girer** — deneme dersine kaydolur, üye olur
- Kuşak ve sınav sistemi **ilk kez bir sistemde yaşar**
- **Kâğıt sözleşme süreci biter**
- **Veli, çocuğunun gelişimini görür**
- **Elite aidat dışında da gelir toplayabilir** — seminer, etkinlik, kişisel antrenman
- Elite, üyesine **her gün ulaşabilecek bir kanala** sahip olur

Son iki madde, Faz 2'nin de ön koşuludur.

---

## 6. FAZ 2 — Online Shop

Faz 1'de kurulan ticari akışın **ürün** tarafına açılması.

Elite'in yaklaşık 900 aktif üyesi var. Faz 1'de kurulan uygulama, bu üyelere ulaşan kanalı yaratır. Faz 2 o kanaldan ürün akıtır.

- Ürün kataloğu (merchandise, ekipman) · Uygulama içinden satın alma
- Stok, sipariş ve teslimat takibi
- **İkinci tüzel yapının gelir ve muhasebe akışı** *(mimari Faz 1'de hazırlanır — §5.7)*

**Durum:** Bu faz şu an belirsizdir. Mevcut bir dış çalışma sürüyor. Sonucu görüldükten sonra iki yol vardır: mevcut çalışma platforma bağlanır, ya da tek omurga üzerinde yeniden kurulur. Karar Elite'e aittir; her iki yolu da destekleriz.

---

## 7. FAZ 3 — Elite AI

- **Üye Asistanı** — uygulamada, sınırlı yetkiyle
- **Destek Asistanı** — web sitesinde, ziyaretçiye
- **Yönetici Asistanı** — analiz ve içgörü
- **İletişim Asistanı** — gelen mesajlarda ilk temas

> Yapay zekâ her zaman **asistandır.** Nihai kararı insan verir.

Bu faz Faz 1'e bağlıdır: yapay zekânın konuşacağı bir üye, okuyacağı bir veri olmadan anlamı yoktur.

---

## 8. FAZ 4 — İletişim Merkezi

WhatsApp, Instagram, Facebook, TikTok, YouTube, e-posta, telefon, web formu — bugün her biri ayrı yerde, ayrı kişide, ayrı hafızada.

**Tek iletişim noktası:** hangi kanaldan gelirse gelsin, mesaj aynı yere düşer; cevap aynı yerden çıkar; geçmiş tek yerde durur.

---

## 9. FAZ 5 — Medya Kütüphanesi ve Sosyal Medya

Faz 1'de teknik videoları **gösterilir.** Faz 5'te video **bir varlık olarak yönetilir.**

**Medya kütüphanesi:** Video yükleme, işleme, barındırma · Merkezî arşiv, etiketleme, arama · İzlenme analitiği
**Öğrenme alanı:** Kombinasyonlar · **Evde antrenman programları** *(müfredat)*
**Sosyal medya:** İçerik planlama ve yayınlama · Çok platformlu yönetim · Performans takibi

---

## 10. Neden Bu Sıra?

- **Uygulama olmadan**, yapay zekânın konuşacağı bir üye yoktur.
- **Ticari akış olmadan**, shop'un para toplayacağı bir ray yoktur.
- **Uygulama olmadan**, medya kütüphanesinin izleyicisi yoktur.
- **Uygulama olmadan**, iletişim merkezinin bağlanacağı bir üye kaydı yoktur.

Faz 2–5 birer **yön**dür, taahhüt değil. Teklifimiz **yalnızca Faz 1** içindir.

---

## 11. Birlikte Netleştireceğimiz Konular

### 11.1 Topluluk ve Antrenman Partneri (Talep 9)

Talep üç parça içeriyor: antrenman partneri bulma, üyeler arası açık grup sohbeti, topluluk işlevi.

**Antrenman partneri bulma** üzerinde hemfikiriz — yapılandırılmış eşleştirme: kuşak seviyesi, kilo sınıfı, antrenman saatleri.

**Açık grup sohbeti** konusunda bir çekincemiz var:

Elite'in uygulamasında çocuk üyeler var. Serbest ve açık bir grup sohbeti, Elite'i hukuken bir *barındırma sağlayıcısı* konumuna taşır ve üç yük getirir:

- **Sorumluluk:** Kullanıcı içeriğinden doğan hukuki sorumluluk Elite'e geçer.
- **Moderasyon:** Çocukların bulunduğu bir sohbet ortamı sürekli gözetim gerektirir. Bu, antrenörlerin işi olamaz.
- **Risk:** Yetişkinlerin ve çocukların serbestçe iletişim kurabildiği bir alan, taşınması gereken en ağır risktir.

**Önerimiz:** Sohbeti uygulamanın içine değil, üyelerin zaten kullandığı yere bırakalım. Topluluk hissini başka yollarla kuralım — kuşak terfilerinin görünürlüğü, başarımlar, etkinlik katılımcı listeleri.

**Bu bir ret değil, bir koruma önerisidir.** Karar Elite'e aittir.

---

---

# EK — AÇIK KONULAR

> **Bu bölüm çalışma sürümüne aittir. Müşteri sürümünde yer almaz.**

## A. Kapsam kararları

| # | Konu | Durum | Karar |
|---|---|---|---|
| A1 | Topluluk / açık grup sohbeti | 🔄 Müzakerede | Faz 1'e alınmadı. Pozisyon §11.1'de. |
| A2 | Antrenman partneri arama | 🔄 Müzakerede | A1 ile birlikte masaya konacak. Riski yok. |
| A3 | "Ek hizmetler" | ✅ KAPANDI | Jenerik **rezerve edilebilir hizmet akışı**. Sağlık verisi kapsam dışı. |
| A4 | Ödeme / aidat görünürlüğü | ✅ KAPANDI | Kapsama alındı, **koşullu** (§5.6). |
| A5 | Çocuk / ebeveyn alanı | ✅ KAPANDI | **Faz 1 çekirdeği** — kimlik mimarisi kararı. |
| A6 | AI sohbet botu | ✅ KAPANDI | **Faz 3'te kalır.** Faz 1'de bağlantı noktası. |
| A7 | Mobil uygulamada video | ✅ KAPANDI | **Faz 1 = tüketim, Faz 5 = yönetim.** Barındırma üstlenilmez. Zarif bozulma. |
| **A8** | **Ticari ödeme rayı** | ✅ **KAPANDI** | **Faz 1'e alındı (§5.7).** Kart + misafir + bilet + iade + GoBD. **İki tüzel yapı baştan kurulur.** PSP Elite adına — **para Soluty'den geçmez** (ZAG/BaFin riski). |

## B. Yerinde keşifte doğrulanacaklar

| # | Konu |
|---|---|
| B1 | **Mevcut sistemin veri erişim / API politikası** — *en kritik*. Bkz. `internal/centercom-integration.md` |
| B2 | Muhasebe aktarımı aktif mi? → **birlikte aktive edilir** (güven hamlesi), ayrı iş olarak satılmaz |
| B3 | Ders/kurs yönetimi zayıf mı, kullanılmıyor mu? |
| B4 | Mevcut uygulamanın hangi yetenekleri açık? |
| B5 | Aile hesabı mevcut sistemde var mı? |
| B6 | Sözleşme süreleri bugün nasıl takip ediliyor? |
| B7 | **Çocuk üye oranı ve yaş dağılımı** |
| B8 | Ödeme görünürlüğü listede neden yok? |
| B9 | **Elite'in mevcut teknik video arşivi var mı?** |
| **B10** | **Bugün seminer/etkinlik ücreti nasıl tahsil ediliyor?** |
| **B11** | **İkinci tüzel yapı kuruldu mu? Vergi/KDV durumu ne?** |

## C. Talep listesi izlenebilirlik

| # | Başlık | Yer |
|---|---|---|
| 1 | Profil + kuşak | Faz 1 — 5.1 / 5.4 |
| 2 | Antrenman planı ve ders kaydı | Faz 1 — 5.1 |
| 3 | Katılım ve antrenman geçmişi | Faz 1 — 5.1 |
| 4 | Haberler ve push | Faz 1 — 5.1 |
| 5 | Seminerler ve etkinlikler + **bilet** | Faz 1 — 5.1 / **5.7** |
| 6 | Sınav sistemi ve gelişim | Faz 1 — 5.1 / 5.4 |
| 7 | Antrenör profilleri | Faz 1 — 5.1 |
| 7b | *AI sohbet botu* | **Faz 3** ✅ |
| 8 | Çocuk ve ebeveyn alanı | Faz 1 — 5.1 ✅ çekirdek |
| 9 | Topluluk / grup sohbeti | **§11.1 — müzakerede** 🔄 |
| 10a | *Teknik videoları (gösterim)* | **Faz 1 — 5.4** ✅ |
| 10b | *Video arşivi, evde antrenman programları* | **Faz 5** ✅ |
| 11 | Kişisel antrenman + ek hizmetler | Faz 1 — 5.1 / **5.7** ✅ |
| 12 | Dijital doküman yönetimi | Faz 1 — 5.1 / 5.5 |
| 13 | Shop bağlantısı | **Faz 2** *(ray Faz 1'de — §5.7)* |
| 14 | Motivasyon / başarımlar | Faz 1 — 5.1 |

## D. Soluty'nin eklediği, talep listesinde olmayan

| Kapsam | Gerekçe |
|---|---|
| **Yönetim paneli** | 14 maddenin hepsinin bir yöneteni olmalı. Zorunlu. |
| **Modern web sitesi** | Müşteri "can alıcı" dedi. **V1'de teklif dışıydı (Faz 3).** |
| **Deneme dersi akışı** | Bugünkü en zayıf nokta. |
| **Dijital sözleşme (kazanım tarafı)** | Kâğıt süreç bitiyor + dönüşüm adımı. |
| **Ödeme / aidat görünürlüğü** | Listede yok ama eksikliği geri döner. Koşullu. |
| **Ticari ödeme rayı** | Listede *dolaylı* var (bilet, PT, shop). Ama rayın kendisi yazılı değildi. |
| **CenterCom entegrasyon katmanı** | **V1'de hiç yoktu.** Yeni iş. |
| **Başlangıç veri aktarımı + kuşak verisi** | **V1'de hiç yoktu.** Yeni iş. |

---

## F. ⚠️ SÜRE VE KAPSAM SAVUNMASI (İÇ — KRİTİK)

> **Bunu unutma.** Müşteri "CenterCom çoğu şeyi yapıyor, siz tasarruf edeceksiniz" bekliyor.
> **Gerçek: süre kısalmıyor.** Aşağısı bu pozisyonun savunmasıdır.

### F.1 Bağlam

**Önceki teklif:** V1 Faz 1 (web tabanlı yönetim uygulaması) + V1 Faz 2 (mobil app) = **8 ay**
**Kritik:** V1'de **web sitesi Faz 3'tü — teklifin DIŞINDAYDI.**

### F.2 Çıkanlar — gerçek tasarruf

| Kapsam | Tasarruf |
|---|---|
| SEPA tahsilat motoru (mandate, tekrarlayan tahsilat, XML, banka dosyası) | ✅ Gerçek |
| Mahnwesen / kademeli ihtar akışı | ✅ Gerçek |
| **Turnike / RFID / dolap donanım entegrasyonu** | ✅✅ **Büyük** — marka tespiti, API araştırması, fiziksel test, saha riski |
| POS / kasa / stok | ✅ Gerçek |
| §312k iptal butonu (hukuki iş) | ✅ Küçük |
| Muhasebe / DATEV (V1 Faz 4) | ✅ Zaten teklif dışıydı |

### F.3 Girenler — yeni iş

| Kapsam | Etki |
|---|---|
| **Yeni web sitesi** — V1'de Faz 3, **teklif dışı**; V2'de Faz 1'in içinde | 🔴 **Büyük** |
| **Mobil app zenginleşti** — 14 madde: veli alanı (kimlik mimarisi!), rozet, teknik video, rezerve edilebilir hizmet, sınav sistemi | 🔴 Orta-büyük |
| **Ticari ödeme rayı** — kart, misafir, iade, KDV, GoBD, **iki tüzel kişilik yönlendirmesi** | 🔴 Orta-büyük |
| **CenterCom entegrasyon/senkron katmanı** — V1'de yoktu | 🔴 Orta |
| **Mutabakat / drift tespiti** — V1'de yoktu | 🔴 Küçük-orta |
| **Başlangıç veri aktarımı** — 900 üye — V1'de yoktu | 🔴 Orta |
| **900 üyenin kuşak verisi girişi** — hiçbir yerde yok, sıfırdan üretilecek | 🔴 **Gizli, orta-büyük** |

### F.4 Savunma argümanları

**1 — Ödeme: çekirdek aynı, ray değişti**
Ödeme sisteminin **~%70'i raydan bağımsızdır:** fatura, ödeme kaydı, GoBD makbuz, mutabakat, iade takibi, raporlama, muhasebe kaydı. Bu çekirdek **her iki durumda da** kurulur.
- CenterCom'a verdiğimiz: **SEPA rayı** (mandate, XML, dunning)
- Geri aldığımız: **Kart rayı** (PSP, misafir ödeme, iade, KDV, **iki tüzel kişilik yönlendirmesi**)

**Kart rayı SEPA rayından daha basit değildir.** Misafir kimliği, iade akışı, tüketici hukuku ve iki-şirket yönlendirmesi SEPA'da yoktu.

**2 — Web sitesi teklife girdi**
V1'de Faz 3'tü ve 8 aylık teklifin dışındaydı. Tek başına ciddi bir ekleme.

**3 — Mobil app büyüdü**
V1'de app "üye self-servis" seviyesindeydi. Şimdi 14 maddelik zengin bir ürün. Veli alanı tek başına kimlik mimarisini değiştiriyor.

**4 — Entegrasyon işi V1'de hiç yoktu**
CenterCom V1'de yoktu. Şimdi: senkron katmanı, mutabakat, drift tespiti, aktarım kuyruğu. **Bu tamamen yeni iş.**

**5 — Veri göçü + kuşak verisi V1'de yoktu**
V1 sıfırdan sistem varsayıyordu. Şimdi 900 üye aktarımı **+ 900 üyenin kuşak verisinin sıfırdan üretilmesi** var.

**6 — Üye master bizde kaldı (D3)**
CenterCom'a giden **tahsilat**tı, **üye yönetimi değil.** Üye kaydı, profil, aile yapısı, sözleşme yaşam döngüsü hâlâ bizde.
*Müşteri "CenterCom üye tutuyor, siz tutmayın" derse:* app CenterCom paylaşsa da paylaşmasa da çalışmalı · üye kendi profilini düzenleyebilmeli · kuşak/sınav verisinin asılacağı bir üye kaydı gerekli, CenterCom onu asla tutmayacak.

### F.5 Müşteriye anlatım — kazanan çerçeve

> ❌ "Tasarruf yok."
> ✅ **"Tasarruf var — ama cebimize koymadık. Sizin daha çok istediğiniz şeye yatırdık."**

Çıkan: donanım entegrasyonu, SEPA motoru, kasa, ihtar akışı
Giren: **web sitesi** (istediniz) · **zengin mobil app** (istediniz) · **ticari ödeme rayı** (para kazanmanız için) · shop hazırlığı

**Aynı süreye daha fazla değer.** Dürüst ve satılabilir.

### F.6 Yeni tahmin

⚠️ **Yeni süre/maliyet tahmini yapılmadı.** Yapılırken F.2 ve F.3 tablolarına bakılacak.
**Beklenti: 8 ay civarı veya biraz üstü. Kısaltma savunulamaz.**

---

## G. Dil ve terminoloji kontrolü (Almanca sürüm öncesi)

- ❌ Yasaklı: *Code, Programmierung, Entwickler, Feature, Modul, "App entwickeln"*
- ✅ Tercih: *Plattform, System, Katman, Bileşen, Akış, Yetenek, Aufbauen, Verbinden*
- ❌ **"Sahip" hiçbir yerde kullanılmaz** → *yönetici* / *Geschäftsführer* / *Leitung*
- ❌ Süre ve maliyet bilgisi müşteri sürümünde **yer almaz**
- ⚠️ Mevcut sistemin adı müşteri belgesinde nasıl anılacak — **onaya tabi**
- ⚠️ §11.1 hukuki çerçevesi (barındırma sağlayıcısı, DSGVO/DSA) — **hukukçuya**
- ⚠️ 16 yaş altı veli onayı iddiası — **hukukçuya**
- ⚠️ §5.7'deki GoBD/fatura iddiaları — **hukukçuya**
- ⚠️ PSP/ödeme sağlayıcı adı müşteri metninde **anılmaz**
- ⚠️ Video platformu adı (YouTube/Vimeo) **anılmaz** — "harici video platformu"
- ✅ Yapay zekâ her zaman "asistan"; nihai karar insanda
- ✅ **Gelir vaadi verilmez.** Kaldıraç gösterilir, rakam uydurulmaz.

---

*Belge sonu — v2.3 ÇALIŞMA DRAFT*
