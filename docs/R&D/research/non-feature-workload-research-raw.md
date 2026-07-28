# Yazılım Projelerinde Özellik Dışı İş Kalemleri (Gizli İş Yükü): Dijital Operasyon Platformu İçin Kapsamlı Araştırma ve Kontrol Listesi

> **Kaynak:** Araştırma modu ham çıktısı — 28 Temmuz 2026
> **Amaç:** Elite Faz 1 efor tahmini + gelecekteki benzer projeler için yeniden kullanılabilir kontrol listesi
> **Durum:** Ham araştırma. Roadmap özeti ayrıca işlenecek.

## TL;DR
- Kapsam belgesinde "tek satır" görünen özellik dışı işler (kimlik/yetki, bildirim altyapısı, ödeme dayanıklılığı, uyum, DevOps, veri göçü, test, erişilebilirlik) tipik olarak toplam eforun büyük bölümünü oluşturur: saf kodlama çoğu çalışmada eforun %20-35'ini geçmez. Bloch, Blumberg & Laartz'ın McKinsey & Company / University of Oxford BT Centre for Major Programme Management için hazırladığı Ekim 2012 tarihli 5.400+ BT projesi çalışmasına göre büyük projeler (>15M$) ortalama "%45 bütçe aşımı, %7 zaman aşımı ile ve vaat edilen değerin %56 eksiğiyle" teslim edilmiştir.
- Bu projede DACH pazarına özgü uyum kalemleri (BFSG/WCAG 2.1 AA erişilebilirlik — 28 Haziran 2025'ten beri yürürlükte, GoBD boşluksuz+değiştirilemez fatura, §312k BGB fesih düğmesi, DSGVO 16 yaş veli onayı, ZUGFeRD/XRechnung e-fatura, DSA) başka pazarlarda olmayan haftalarca ek iş yaratır ve bunların çoğu "sabit maliyet"tir — proje büyüklüğünden bağımsız olarak ödenmesi gerekir.
- Öneri: Tahmini iki katmana ayırın — (1) özellik sayısıyla ölçeklenen işler, (2) proje başına bir kez ödenen sabit altyapı/uyum "kurulum vergisi". Aşağıdaki kontrol listesini teklif/kapsam belgesine ek olarak koyun; her satır için "sabit mi / ölçeklenen mi" etiketi tahmin modelinin temelidir.

## Key Findings

**1. "Gizli iş" bir algı sorunu değil, ölçülmüş bir olgudur.** Steve McConnell *Software Estimation: Demystifying the Black Art* (2006) kitabında tahmin hatalarının ana kaynaklarından birini büyük harflerle "OMITTED ACTIVITIES" (atlanan faaliyetler) olarak listeler: üçüncü taraf yazılımı bağlamak için gereken "glue code", yeni ekip üyelerinin adaptasyonu, entegrasyon işi, değişiklik taleplerinin işlenmesi, performans ayarı, hata takibinin idari yükü, dokümantasyon gözden geçirme vb. McConnell tipik yazılım organizasyonunun tahminlerinin "%100 veya daha fazla düşük" olduğunu, iyi tekniklerle bu hatanın "yaklaşık %25 veya daha aza" indirilebileceğini belirtir.

**2. Kodlama, eforun küçük bir kısmıdır.** Farklı kaynaklar birbirini doğruluyor: *The Art of Agile Development* geçmiş çalışmalara dayanarak programcı zamanının "%30'dan azının" geleneksel programlamaya, "%20'den azının" kodlamaya gittiğini; kalanın toplantılar, sorun çözme, müşteri konuları ve teste gittiğini aktarır. COCOMO II/PMI temelli dağılımlar kodlama+birim testi için %50-70, planlama/yönetim için ~%20, gereksinim+tasarım için %20-35 verir. Yani "özellik kodu" kalemi, altındaki altyapı olmadan çalışmaz.

**3. Gereksinim kayması (requirements creep) ölçülebilir ve öngörülebilir.** Capers Jones'un fonksiyon puanı kurallarında (Rule of Thumb #3) "kullanıcı gereksinimleri tasarımdan kodlama fazlarına kadar ayda ortalama %2 oranında büyür"; 6 aylık bir projede bu ~%12 ek kapsam demektir. Jones "Preventing Software Failure" çalışmasında gereksinim değişimini "takvim ayı başına ~%1" olarak da verdiğinden, planlama için ~%1,5/ay savunulabilir bir figürdür. Ticari yazılımda bu oran aylık %3,5'e, toplamda %250'ye kadar çıkabilir. Bu büyüme çoğunlukla "unutulan" özellik dışı işlerden gelir.

**4. Veri göçü kronik olarak hafife alınır.** Bloor Research'ün 2011 takip anketine (Philip Howard) göre veri göçü projelerinin "%38,3'ü süre/bütçe aştı veya iptal edildi, ortalama aşım maliyeti 268.000$"; daha erken 2006/2007 Bloor anketi ise Global 2000 firmalarının "%80'inden fazlasının süre ve/veya bütçe aştığını" bulmuştur. Doğrulama (validation) fazı sıklıkla göçün kendisinden daha fazla kaynak tüketir. Bu projedeki ~900 kullanıcının aktarımı "tek satır" gibi görünür ama kaynak veri analizi, eşleme, mükerrer birleştirme, veli-çocuk ilişkilerinin yeniden kurulması ve tekrar çalıştırılabilir/geri alınabilir pipeline haftalarca iş demektir.

**5. Almanya/AB uyumu ayrı bir proje gibidir.** BFSG (28.06.2025'ten beri yürürlükte, WCAG 2.1/2.2 AA), GoBD (değiştirilemez kayıt + boşluksuz fatura numaralandırma), §312k BGB fesih düğmesi, DSGVO Madde 8 (Almanya'da 16 yaş, veli onayı doğrulaması), ZUGFeRD/XRechnung e-fatura ve DSA yükümlülükleri — bunların her biri teknik iş kalemidir ve çoğu sabit maliyettir.

## Details — Kategorize Edilmiş Gizli İş Kalemleri Listesi

Her kategori için: **[S]** = sabit maliyet (proje büyüklüğüyle ölçeklenmez), **[Ö]** = özellik/kapsam sayısıyla ölçeklenir, **[AB]** = Almanya/AB'ye özgü.

### 1. Kimlik Doğrulama, Yetkilendirme, Oturum Yönetimi
- Rol/izin (RBAC) modeli tasarımı, iki tüzel kişilik ve admin/üye/veli/çocuk rollerinin ayrımı **[S+Ö]**
- Oturum yönetimi, token yenileme, çoklu cihaz oturumu, "her yerden çıkış" **[S]**
- Parola sıfırlama, e-posta/telefon doğrulama, 2FA/MFA **[S]**
- Neden hafife alınır: "Login var" tek satır görünür; ama yetki matrisi her yeni özellikte yeniden gözden geçirilir. Tipik gecikme: rol modelinin geç değişmesi tüm ekranları etkiler.

### 2. Hesap Yaşam Döngüsü
- Davet → aktivasyon → doğrulama akışı **[S]**
- Mükerrer kayıt tespiti ve hesap birleştirme **[Ö]** — özellikle 900 kullanıcı göçünde kritik
- Hesap devre dışı bırakma/silme (DSGVO ile bağlantılı) **[S+AB]**
- Veli-çocuk hesap bağlama, tek veliye birden çok çocuk, reşit olma (18 yaş) geçişinde hesabın çocuğa devri **[S+AB]**
- Neden hafife alınır: kimlik modeli "veri modeli" sanılır; oysa durum makinesidir. Reşit olma geçişi ve veli onayının geri çekilmesi nadiren kapsam belgesinde yer alır.

### 3. Bildirim Altyapısı
- Push (APNs + FCM) sertifika/anahtar yönetimi, token yaşam döngüsü **[S]**
- E-posta teslim edilebilirliği: SPF, DKIM, DMARC DNS kayıtları + DMARC'ı p=none'dan p=reject'e kademeli taşıma (haftalar süren izleme) **[S]**
- SMS entegrasyonu, şablon yönetimi, çok dillilik (DE/EN/TR), kuyruk + tekrar deneme + başarısızlık yönetimi **[S+Ö]**
- Neden hafife alınır: "bildirim gönder" tek satır; oysa teslim edilebilirlik altyapısı olmadan şifre sıfırlama/fatura e-postaları spam'e düşer. Gmail/Microsoft 2024'ten beri kimlik doğrulama gerekliliklerini sıkılaştırdığı için SPF/DKIM/DMARC olmadan gönderilen posta varsayılan olarak spam'e gidebilir.

### 4. Mobil Uygulamaya Özgü Altyapı
- Sürüm yönetimi + zorunlu güncelleme (force update) mantığı — backend versiyon uyumu dahil (yaygın bir hata: uygulamanın "version code" gönderirken backend'in "semantic version" beklemesi, force-update mantığını bozar) **[S]**
- Deep linking / Universal Links (iOS AASA dosyası) + Android App Links (assetlinks.json), her sürümde test — deep link'ler uygulama güncellemelerinden sonra sıkça kırılır **[S]**
- Çevrimdışı davranış, sertifika/provisioning profili yönetimi **[S]**
- App Store / Google Play yayın süreci: Apple kendi beyanına göre başvuruların "%90'ından fazlasını 24 saat içinde" inceler, ancak yeni geliştirici hesapları ve hassas kategoriler (finans/ödeme/çocuk) için ilk yayın günlerce-haftalarca sürebilir; red-yeniden gönderim döngüsü her seferinde 24-48 saat ekler. Google Play güncellemeleri tipik olarak 1-3 saat, yeni uygulamalar/politika incelemesi 3-7 gün. **[S+AB kısmen — çocuk verisi/ödeme ek inceleme]**
- Neden hafife alınır: yayın takvimi "yükle ve bitir" sanılır; red sebepleri (eksik gizlilik açıklaması, izin gerekçesi, metadata uyumsuzluğu) lansmanı kaydırır. Apple Developer forumlarında 2024-2025'te AI üretimi başvuru dalgası nedeniyle bazı dönemlerde uzun bekleme süreleri bildirildi.

### 5. Veri Katmanı
- Veri modeli + migration altyapısı (schema evolution) **[S]**
- Arama, filtreleme, sayfalama (her liste ekranında tekrarlayan gizli iş) **[Ö]**
- Dışa aktarım (CSV/Excel), denetim izi / audit log (GoBD + DSGVO için çift amaçlı) **[S+AB]**
- Neden hafife alınır: "liste göster" tek satır; ama performanslı sayfalama + filtre + yetki kombinasyonu her ekranda yeniden çözülür.

### 6. Güvenlik
- Hız sınırlama (rate limiting), kaba kuvvet koruması **[S]**
- Gizli anahtar yönetimi (secrets management), şifreleme (at rest / in transit) **[S]**
- OWASP Top 10 odaklı iş kalemleri, güvenlik testi/pentest **[S+Ö]**
- Deep link güvenliği (OWASP MASVS-PLATFORM: link hijacking, veri doğrulama) **[S]**
- Neden hafife alınır: güvenlik "non-functional" olduğu için kapsam listesinde yok; ama Carnegie Mellon verisine göre geliştirme maliyetinin %60-80'i yeniden iş (rework) ve bunun büyük kısmı eksik gereksinimlerden (güvenlik dahil) gelir.

### 7. Ödeme Altyapısının Görünmeyen Tarafı **[kritik]**
- Idempotency anahtarları (çift tahsilat önleme) — Stripe tüm POST isteklerine idempotency anahtarı eklemeyi önerir **[S]**
- Webhook güvenilirliği: imza doğrulama, 200'ü hızlı dönme (Stripe 30s içinde yanıt beklemezse yeniden dener), asenkron kuyruk, Stripe'ın 72 saatlik tekrar deneme penceresi, mükerrer/sırasız event yönetimi (handler'lar idempotent olmak zorunda) **[S]**
- Ödeme durum makinesi, mutabakat (reconciliation) işleri, iade, chargeback **[S+Ö]**
- SCA/3DS akışları **[S+AB]**
- PCI DSS kapsam yönetimi: hosted fields/iframe/redirect ile SAQ A'ya inme (raw kart verisi hiç sisteme girmesin — SAQ A yalnızca ~21 kontrol içerirken SAQ D yüzlerce kontrol gerektirir) **[S]**
- PSP hesap onay süreci (KYB) — iki tüzel kişilik için ayrı ayrı, takvim riski **[S+AB]**
- Neden hafife alınır: "Stripe ile ödeme al" tek satır; ama para söz konusu olduğunda her edge-case (başarısız/bekleyen/iptal/iade/mükerrer webhook) ele alınmak zorunda.

### 8. Yasal/Uyum Gerekliliklerinin TEKNİK Karşılığı **[AB — bu projenin en ayırt edici bloğu]**
- **DSGVO/GDPR veri sahibi hakları**: erişim (SAR), taşınabilirlik (makine-okunur export — JSON/CSV), silinme (Art. 17 — tüm replikalar, yedekler, log'lar dahil; akademik literatür bunun teknik olarak en zor haklardan biri olduğunu, yedek/dağıtık kopyaların silinmesinin saatler-aylar sürebildiğini gösteriyor), düzeltme, işleme kısıtlama — hepsi 1 ay içinde yanıt **[S+Ö][AB]**
- **Rıza yönetimi ve ispatı** (consent logs), çerez/izleme yönetimi (CMP) **[S][AB]**
- **Reşit olmayan kullanıcı için veli onayı** (DSGVO Art. 8, Almanya varsayılan 16 yaşı korudu; "makul çaba" ile veli doğrulaması, veli portalı/dashboard) **[S][AB]**
- **GoBD**: değiştirilemez (unveränderbar) kayıt, boşluksuz+eşsiz fatura numaralandırma, tam değişiklik geçmişi, revizyon-güvenli arşiv, 2025 sonrası faturalar için 8 yıl (öncesi 10 yıl) saklama **[S][AB]**
- **ZUGFeRD/XRechnung e-fatura** (EN 16931): B2B'de 1 Ocak 2025'ten beri ALMA zorunlu; GÖNDERME 2027'de (>800.000€ ciro) ve 2028'de (tümü) zorunlu; iki tüzel kişilik için ayrı numara aralıkları (Nummernkreise) **[S][AB]**
- **§312k BGB fesih düğmesi**: "Jetzt kündigen" (mahkemeler "Kündigungsabsicht abschicken" gibi belirsiz ifadeleri reddetti — OLG Hamburg 2024) + onay sayfası, login OLMADAN erişilebilir (OLG Nürnberg 2024), kalıcı veri taşıyıcıda tarih-saatli onay kaydı; uygulaması avukatların deneyimine göre "web sitesi mimarisinde derin değişiklik gerektirdiğinden birkaç hafta sürebilir" ve mobil sürümde de gerekir **[S][AB]**
- **DSA**: bildirim/şikayet mekanizması, şeffaflık, dark pattern yasağı, reşit olmayan koruması **[S][AB]**
- **Veri işleme envanteri (RoPA), AVV/sipariş işleme sözleşmesi, eIDAS dijital imza** (SES/AES/QES — sözleşme türüne göre; çoğu ticari sözleşme için SES/AES yeterli, Schriftform gerektiren durumlarda QES) **[S][AB]**
- Neden hafife alınır: hukuki gereklilikler "avukat işi" sanılır; oysa her biri veri modeli, API, UI ve süreç değişikliği gerektirir. Ör. §312k düğmesi vzbv tarafından sistematik denetlenir; 2023'te vzbv'nin incelediği ~3.000 web sitesinin yalnızca %42'si gereklilikleri karşılıyordu ve eksiklik fesih hakkı + ihtar (Abmahnung) doğurur.

### 9. İşletme / DevOps
- Ortam kurulumu (dev/test/prod), CI/CD pipeline **[S]**
- Yedekleme + geri yükleme TESTİ (sadece yedek değil, restore denemesi) **[S]**
- İzleme, uyarı, hata takibi (error tracking), log saklama **[S]**
- Alan adı/SSL/DNS, sertifika yenileme otomasyonu **[S]**
- Neden hafife alınır: COCOMO II literatüründe "sabit başlangıç maliyetleri (araç uyarlama, standart ve idari rapor kurulumu)" küçük projelerde ölçek ekonomisinin kaynağı olarak açıkça geçer — yani bu maliyet küçük projede oransal olarak DAHA büyüktür.

### 10. Çok Dillilik / Lokalizasyon
- i18n metin altyapısı, tarih/saat/para birimi biçimleri (DE/EN/TR) **[S]**
- Çeviri iş akışı, eksik çeviri yönetimi, üç dilde QA **[Ö]**
- Neden hafife alınır: "3 dil" tek satır; ama her yeni ekran/e-posta/bildirim üç kez üretilir ve test edilir.

### 11. Arka Plan İşleri
- Zamanlanmış görevler (cron), kuyruk altyapısı, başarısız iş yönetimi, toplu işlemler **[S+Ö]**
- Neden hafife alınır: fatura üretimi, hatırlatma, mutabakat gibi işler "otomatik olur" sanılır; başarısız iş yönetimi olmadan sessizce çöker.

### 12. Veri Göçü
- Kaynak veri analizi, temizleme, eşleme, doğrulama, tekrar çalıştırılabilirlik, geri alma planı **[Ö]**
- Neden hafife alınır: yukarıda (Key Finding 4). Bloor'a göre göç projelerinin %38,3'ü süre/bütçe aşıyor veya iptal ediliyor; doğrulama fazı sıklıkla göçün kendisinden pahalı.

### 13. Test ve Kalite
- Test stratejisi, cihaz/tarayıcı matrisi (iOS+Android+3 web yüzeyi), kabul testi, regresyon, hata düzeltme döngüsü **[S+Ö]**
- Sektör normu: başarılı ekipler eforun %20-30'unu QA/teste ayırır (bazı kaynaklar %20-40). Veri göçüne özgü olarak Gartner (Syniti aktarımı) göç planının "%25 planlama, %75 test/kontrol/mutabakat" olmasını önerir; genel yazılım pratiğinde (AssistNow) "test toplam proje takviminin %20-25'ini tüketmelidir".
- Neden hafife alınır: test "sonunda yapılır" sanılır; regresyon her sürümde tekrarlar.

### 14. Erişilebilirlik (BFSG/WCAG) **[AB — özellikle araştırıldı]**
- BFSG (Barrierefreiheitsstärkungsgesetz), EU Direktifi 2019/882'nin (European Accessibility Act) Almanya uygulaması, 28.06.2025'ten beri yürürlükte; B2C web, online shop, app, dijital doküman kapsamda; teknik ölçüt genelde WCAG 2.1 (bazı kaynaklar 2.2) Level AA.
- İş kalemleri: klavye navigasyonu, renk kontrastı, alt-text, anlamlı yapı, ekran okuyucu testi, erişilebilirlik beyanı (accessibility statement), sürekli denetim **[S+Ö]**
- Geçiş dönemi: 28.06.2025 öncesi kullanılan ürünler/hizmetler için 27.06.2030'a kadar; ama yeni platform bu istisnadan yararlanamaz.
- Neden hafife alınır: erişilebilirlik "tasarım detayı" sanılır; oysa üç yüzeyi de (mobil+web+panel) etkiler ve sonradan eklemek baştan yapmaktan pahalıdır.

### 15. Tasarım İşi
- UI/UX tasarım, tasarım sistemi (design system), üç ayrı yüzey (mobil/web/panel) için ayrı tasarım **[S+Ö]**
- Neden hafife alınır: tasarım sistemi bir kez kurulur (sabit) ama her ekran varyantı ölçeklenir. Yaygın sektör dağılımı Dev %50-60 / QA %20-25 / Tasarım %10-15 / PM %10-20.

### 16. Teslim ve Devir
- Eğitim, dokümantasyon, destek süreci tanımı, hipercare/stabilizasyon dönemi **[S]**
- Neden hafife alınır: proje "canlıya alınca biter" sanılır; hipercare dönemi nadiren fiyatlanır.

### 17. Proje Yönetimi, Koordinasyon, Müşteri İletişimi
- COCOMO II/PMI: planlama+yönetim ~%20; müşteri toplantıları, gereksinim netleştirme, değişiklik triyajı **[S+Ö]**
- Neden hafife alınır: bu "faturalanamaz" görülür ama McConnell'ın omitted-activities listesinin başında "management coordination/manager meetings, requirements clarifications" gelir.

## Yüzdesel Pay — Somut Veriler (kaynaklarıyla)
- **McKinsey & Company / University of Oxford (Bloch, Blumberg & Laartz, Ekim 2012, 5.400+ BT projesi)**: büyük projeler (>15M$) ort. %45 bütçe aşımı, %7 zaman aşımı, %56 değer eksikliği; "BT projelerinin %17'si şirketin varlığını tehdit edecek kadar kötü gider" (black swan projeler, %200-400 aşım). *(Not: McKinsey'nin sonraki bir özetinde aynı çalışma %66 bütçe / %33 zaman olarak da aktarılır; orijinal Ekim 2012 makalesindeki %45/%7 figürleri tercih edilmeli.)*
- **Standish Group CHAOS Report (1994, orijinal)**: "başarı oranı yalnızca %16,2, sıkıntılı (challenged) projeler %52,7, iptal/impaired %31,1"; "projelerin %52,7'si orijinal tahminin %189'una mal olacak"; sıkıntılı projelerde "özelliklerin ort. yalnızca %61'i teslim edildi ... büyük şirketlerde yalnızca %42". *(Metodolojisi peer-reviewed literatürde eleştirildi — tek başına kanıt değil.)*
- **Kodlama payı**: *The Art of Agile Development* (Shore & Warden) — programcı zamanının "%20'den azı kodlama; %30'dan azı geleneksel programlama".
- **Test/QA**: eforun %20-30'u; veri göçünde Gartner önerisi %75 test/kontrol/mutabakat.
- **Veri göçü**: Bloor 2011 — projelerin %38,3'ü süre/bütçe aşıyor veya iptal (ort. aşım 268.000$); Bloor 2006/2007 — Global 2000'de %80'den fazlası süre/bütçe aşıyor.
- **Rework**: geliştirme maliyetinin %60-80'i yeniden iş (Carnegie Mellon), büyük kısmı eksik gereksinimlerden; NFR'ler iyi yapılırsa ürün kusurlarının %50-80'i elenebilir.
- **Gereksinim kayması**: ayda ~%2, tasarımdan kodlamaya (Capers Jones, Rule of Thumb #3); ticari yazılımda aylık %3,5'e / toplam %250'ye kadar.

## Sabit vs. Ölçeklenen Ayrımı (tahmin modeli için)
**Sabit (proje başına bir kez — küçük projede oransal olarak daha ağır):** kimlik/oturum altyapısı, bildirim altyapısı (APNs/FCM/SPF-DKIM-DMARC), CI/CD + ortamlar, yedek/restore, izleme, DNS/SSL, tasarım sistemi kurulumu, GoBD arşiv altyapısı, §312k düğmesi, çerez/rıza yönetimi, e-fatura formatı entegrasyonu, PCI kapsam mimarisi, i18n altyapısı, veli onayı mekanizması.

**Özellik sayısıyla ölçeklenen:** her ekranın arama/filtre/sayfalama/yetki'si, her varlığın audit log'u, her akışın 3 dilde çevirisi + testi, her ekranın erişilebilirlik uyumu, her yeni özelliğin regresyon testi, DSGVO haklarının her yeni veri türüne yayılması.

Bu ayrımın kritikliği: COCOMO II Applications Composition modeli küçük projeler için doğrusal (B=1) kullanılırken, sabit başlangıç maliyetleri küçük projede ölçek ekonomisi kaybı yaratır — yani bu 900 kullanıcılık orta ölçekli projede sabit "kurulum vergisi" oransal olarak ağır basacaktır.

## Recommendations
1. **Kapsam belgesine "Gizli İş Yükü Eki" iliştirin.** Yukarıdaki 17 kategoriyi teklife ek olarak koyun; müşteri "tek satır" kalemlerin altındaki işi görsün. Bu, sonraki değişiklik taleplerinde koruma sağlar.
2. **Tahmini iki katmanlı yapın.** Önce sabit "kurulum vergisi"ni (yukarıdaki sabit liste) toplam olarak fiyatlayın; sonra özellik başına ölçeklenen işi çarpın. Bu ayrım küçük/orta projelerde sabit maliyetin oransal ağırlığını görünür kılar.
3. **Uyum kalemlerini erken kilitleyin.** BFSG, GoBD, §312k, DSGVO veli onayı ve e-fatura kararlarını mimari aşamada verin; bunlar sonradan eklenince veri modelini ve UI'yı yeniden yazdırır. PSP/KYB onayını ve Apple/Google ilk yayın incelemesini (çocuk verisi + ödeme = ek inceleme) kritik-yol takvimine erken koyun; ilk yayın için 3-7 gün + red tamponu ayırın.
4. **Gereksinim kayması için tampon ayırın.** Capers Jones'un ~%2/ay verisine dayanarak, süreye göre açık bir kapsam-büyüme tamponu (bilgi sistemleri sınıfı için ~%1,5/ay savunulabilir) planlayın.
5. **Veri göçünü ayrı bir mini-proje gibi yönetin.** ~900 kullanıcı için kaynak analiz + temizlik + eşleme + doğrulama + geri alma; Gartner mantığıyla emeğin büyük kısmını (yaklaşık üçte ikiye kadar) test/doğrulama/mutabakata ayırın, tekrar çalıştırılabilir ve geri alınabilir pipeline kurun.
6. **Bu listeyi yeniden kullanılabilir kontrol listesi haline getirin.** Her yeni projede bu 17 başlık + sabit/ölçeklenen etiketleri baz alın; benzer DACH projelerinde uyum bloğu (Bölüm 8+14) neredeyse birebir tekrar kullanılır.

**Eşik/tetikleyiciler (öneriyi değiştirecek koşullar):** Ödemeler self-hosted karta dönerse PCI kapsamı SAQ A'dan (~21 kontrol) SAQ D'ye (yüzlerce kontrol) sıçrar, efor katlanır. Çok kiracılı (multi-tenant) veya üçüncü taraf satıcı eklenirse DSA yükümlülükleri (KYB, trusted flagger, moderasyon) ağırlaşır. Kullanıcı sayısı büyürse veri göçü karmaşıklığı doğrusaldan hızlı artar. E-fatura GÖNDERME zorunluluğu 2027 (>800.000€) / 2028'de devreye gireceğinden, iki tüzel kişiliğin ciro projeksiyonu bu tarihleri kritik yola sokabilir.

## Caveats
- Yüzdesel veriler farklı bağlamlardan (kurumsal BT, agile, fonksiyon puanı çalışmaları) gelir; bu spesifik projeye birebir uygulanamaz, büyüklük mertebesi (order-of-magnitude) referansı olarak kullanılmalıdır.
- Standish CHAOS metodolojisi peer-reviewed literatürde (Glass 2006; Eveleens & Verhoef 2009, IEEE Software) eleştirilmiştir; tek başına kanıt değil, diğer kaynaklarla birlikte okunmalıdır. McKinsey çalışmasında bile aynı araştırmanın iki farklı özetinde %45/%7 ile %66/%33 arasında tutarsızlık vardır.
- Yasal yorumlar mühendislik perspektifiyle özetlenmiştir; BFSG kapsamı (mikro işletme istisnaları — <10 çalışan ve <2M€ ciro hizmet sağlayıcıları kısmen muaf olabilir), §312k uygulanabilirliği ve e-fatura eşikleri için nitelikli hukuki danışmanlık alınmalıdır.
- App Store/Play inceleme süreleri zamanla ve başvuru hacmiyle değişir (2024-2025'te AI üretimi başvuru dalgası nedeniyle bazı dönemlerde uzun gecikmeler bildirildi); takvim planlamasında tampon şart.
- BFSG'nin tam teknik standardı (WCAG 2.1 vs 2.2 AA) kaynaklar arasında ufak farklarla aktarılıyor; harmonize normlar (Konformitätsvermutung) üzerinden güncel gereklilik teyit edilmeli.
- McConnell'ın kitabındaki atlanan-faaliyet başına spesifik yüzde tablosu (kitap s. 44-46 ve 233-241) ücretli içerikte olduğundan, bu rapordaki dağılım figürleri COCOMO II, PMI ve pratisyen kaynaklarının bileşiminden türetilmiştir.
