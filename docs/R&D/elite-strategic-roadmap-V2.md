# Elite Kickboxing — Stratejik Yol Haritası

**Sürüm:** 2.0 — **ÇALIŞMA DRAFT (Türkçe)**
**Tarih:** 14 Temmuz 2026
**Hazırlayan:** Soluty GmbH
**Durum:** İç çalışma sürümü. Müşteri sürümü Almanca (formal *Sie*) olarak ayrıca hazırlanacaktır.

> **Çalışma notu:** Bu belge v1 yol haritasının yerini alır. v1 (`elite-strategic-roadmap.md`) arşiv olarak korunur, değiştirilmez.
> V2, iki gelişme sonrası yeniden kurulmuştur:
> 1. Elite'in mevcut sistemi **CenterCom**'un keşfedilmesi,
> 2. Elite'ten gelen **üye uygulaması talep listesi** (14 başlık).
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

*(Talep listesindeki "opsiyonel yapay zekâ sohbet botu" Faz 3'e aittir.)*

#### Çocuk ve Ebeveyn Alanı
- Veli hesabı altında birden çok çocuk profili
- Çocuğun katılım durumu
- Çocuğun antrenman gelişimi
- Sınav tarihleri
- Velilere yönelik bilgilendirme

> **Not:** Ödeme yapan veli, antrenman yapan çocuk. Bu alan yalnızca bir kolaylık değil; Elite ile velinin arasındaki tek doğrudan dijital kanaldır.

#### Kişisel Antrenman ve Ek Hizmetler
- Kişisel antrenman rezervasyonu
- Bireysel randevu oluşturma

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

Talep listesinde yer almaz — ama listedeki her başlığın bir yöneteni olmak zorundadır. Haberi kim girer? Sınav takvimini kim açar? Kuşak terfisini kim işler? Semineri kim tanımlar?

Panel ayrı bir ürün değildir. **Uygulamanın kumanda odasıdır.**

- İçerik yönetimi (web + uygulama)
- Ders programı ve doluluk yönetimi
- Kuşak ve sınav yönetimi
- Seminer ve etkinlik tanımlama
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

> **Çalışma notu (müşteri sürümünde yer almayacak):** Bu akışın tahsilat tarafıyla nasıl buluşacağı, mevcut sistemin veri erişim koşullarına bağlıdır. Yerinde keşifte netleşecek. Üç senaryo: (a) veri yazma imkânı → tam dijital akış, (b) yalnızca aktarım → yarı dijital, toplu aktarım, (c) erişim yok → dijital toplama + manuel giriş. Her üçünde de bugünkü kâğıt süreçten ileridir.

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

---

# EK — AÇIK KONULAR

> **Bu bölüm çalışma sürümüne aittir. Müşteri sürümünde yer almaz.**

## A. Karara bağlanacak kapsam konuları

| # | Konu | Durum | Not |
|---|---|---|---|
| A1 | **Topluluk / açık grup sohbeti** (Talep 9) | ⛔ Faz 1'e alınmadı | Çocuk üyeler var → moderasyon, DSGVO/DSA yükümlülüğü, taciz riski. Öneri: açık sohbet yerine **yapılandırılmış antrenman partneri eşleştirme** (seviye/kuşak/saat bazlı, serbest sohbet yok). Müşteriyle konuşulacak. |
| A2 | **Antrenman partneri arama** (Talep 9) | ⏸️ Bekliyor | A1 ile birlikte karara bağlanacak. |
| A3 | **"Ek hizmetler" ne demek?** (Talep 11) | ❓ Tanımsız | Müşteriye sorulacak. Kapsam kapısı riski. |
| A4 | **Ödeme / fatura görüntüleme** | ❓ Listede yok | Üye uygulamada aidat durumunu göremezse eksiklik olarak geri döner. Mevcut sistemde olduğu için mi atlandı, unutuldu mu? Sorulacak. |
| A5 | **Çocuk üye oranı** | ❓ Bilinmiyor | Çocuk/ebeveyn alanının Faz 1 çekirdeği mi opsiyon mu olduğunu bu belirler. |
| A6 | **AI sohbet botu Faz 1'e küçük bir SSS botu olarak girsin mi?** | ⏸️ Bekliyor | Müşteri "opsiyonel" demiş. Şu an Faz 3'te. |

## B. Yerinde keşifte doğrulanacaklar

| # | Konu | Neden önemli |
|---|---|---|
| B1 | **Mevcut sistemin veri erişim / API politikası** | Dijital sözleşme akışının, üye verisi senkronizasyonunun ve gelecekteki AI katmanının tamamı buna bağlı. **En kritik açık soru.** |
| B2 | Muhasebe aktarımı gerçekten aktif mi? | Mevcut sistemde bu yetenek var; Elite habersiz görünüyor. Ayrı iş olarak satılmaz — **birlikte aktive edilir** (güven hamlesi). |
| B3 | Ders/kurs yönetimi gerçekten zayıf mı, yoksa kullanılmıyor mu? | Kapsamı doğrudan etkiler. |
| B4 | Mevcut uygulamanın gerçekte hangi yetenekleri açık? | Talep listesinin bir kısmı zaten mevcut olabilir. |
| B5 | Aile hesabı mevcut sistemde var mı? | Çocuk/ebeveyn alanının mimarisini etkiler. |
| B6 | Sözleşme sürelerinin bugün nasıl takip edildiği | Dijital sözleşme akışının tasarımını etkiler. |

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
| 7b | *Opsiyonel AI sohbet botu* | **Faz 3** |
| 8 | Çocuk ve ebeveyn alanı | Faz 1 — 5.1 |
| 9 | Topluluk / grup sohbeti | **⛔ Açık — A1** |
| 10 | *(Teknik ve öğrenme alanı)* | **Faz 5** |
| 11 | Kişisel antrenman | Faz 1 — 5.1 (ek hizmetler: A3) |
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

## E. Dil ve terminoloji kontrol listesi (Almanca sürüm öncesi)

- ❌ Yasaklı: *Code, Programmierung, Entwickler, Feature, Modul, "App entwickeln"*
- ✅ Tercih: *Plattform, System, Katman, Bileşen, Akış, Yetenek, Aufbauen, Verbinden*
- ❌ "Sahip" **hiçbir yerde kullanılmaz** → *yönetici* / *Geschäftsführer* / *Leitung*
- ❌ Süre ve maliyet bilgisi müşteri sürümünde **yer almaz**
- ⚠️ Mevcut sistemin adının müşteri belgesinde nasıl anılacağı **onaya tabidir** (Project Instructions: rakip adı geçirmek iki aşamalı onay gerektirir)
- ✅ Yapay zekâ her zaman "asistan"; nihai karar insanda

---

*Belge sonu — v2.0 ÇALIŞMA DRAFT*
