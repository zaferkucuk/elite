# CenterCom Entegrasyon — Bağımlılıklar, Sorular, Senaryolar

**Durum:** İÇ DOKÜMAN — müşteriye gitmez
**Tarih:** 14 Temmuz 2026
**Sahiplik:** Soluty / Elite projesi
**İlgili:** `docs/R&D/elite-strategic-roadmap-V2.md` §5.6

---

## 0. Temel Varsayım

> **CenterCom büyük olasılıkla bizimle entegrasyon yapmayacaktır.**
> Yaparlarsa sürpriz olur. Mimariyi bu varsayım üzerine kur.
> **İşbirliği = bonus. Dayanak değil.**

Bu doküman, CenterCom'a bağlı her şeyi tek yerde toplar. Yerinde keşifte ve (gerekirse) CenterCom'a yazılı başvuruda bu liste kullanılır.

---

## 1. Kritik İçgörü — CenterCom'un İznine İhtiyacımız Yok

Burada bir kavram karışıklığı var, netleştirelim:

| Ne lazım | Kimden | CenterCom işbirliği gerekir mi? |
|---|---|---|
| **Yazma yolu** — yeni üye verisinin CenterCom'a girmesi | Elite personeli elle girer | ❌ Hayır |
| **Okuma yolu** — üye/aidat durumunun bize gelmesi | Elite kendi verisini dışa aktarır | ❌ Hayır* |
| **Canlı senkronizasyon** — gerçek zamanlı iki yönlü akış | CenterCom API'si | ✅ Evet |

\* CenterCom'un DATEV ve Lexware arayüzleri var → **export yeteneği mevcut.** Üye listesi export'u da büyük olasılıkla var. Doğrulanacak.

**Sonuç:** Faz 1'in tamamı **sıfır CenterCom işbirliğiyle** teslim edilebilir. Canlı API sadece deneyimi iyileştirir, mümkün kılmaz.

**Veri Elite'in verisidir.** CenterCom'un lütfu değil.

---

## 2. SEPA Mandate — Hukuki Durum

### 2.1 Doğrulanmış olan

- **Mandate, borçlu (üye) ile alacaklı (Elite) arasındadır.** CenterCom taraf değildir.
- **Arşivleme yükümlülüğü alacaklıdadır** — yani Elite'te. Biz Elite adına arşivleyebiliriz.
- CenterCom'un ihtiyacı mandate belgesi değil, **veri alanlarıdır:** IBAN, BIC, Mandatsreferenz, imza tarihi, sıra tipi (ilk/tekrar/son).
- SEPA Basislastschrift: üyenin **8 hafta koşulsuz iade hakkı**; yetkisiz tahsilatta **13 ay** itiraz hakkı.
- Mandate, son tahsilattan **36 ay** sonra kendiliğinden geçersiz olur.
- Zorunlu alanlar: alacaklı adı + Gläubiger-ID + Mandatsreferenz, borçlu adı + adres + IBAN/BIC, tarih, borçlunun dilinde yetkilendirme metni, Basislastschrift için 8 hafta bilgilendirmesi.

### 2.2 Çelişkili olan — ⚠️ HUKUKÇUYA DOĞRULATILACAK

İmza formu konusunda kaynaklar çelişiyor:

- Bazı kaynaklar: elektronik mandate **imzasız da geçerli** (kâğıtta imza zorunlu, elektronikte değil)
- Bazı kaynaklar: **nitelikli elektronik imza (QES)** gerekli
- Ortak nokta: **form serbest olsa da, ihtilafta ispat yükü alacaklıdadır**

**Tasarım sonucu:** Hedef "hangi imza teknolojisi" değil, **kanıt kalitesi.**
Gerekli: zaman damgası, IP, cihaz bilgisi, imzalama anında gösterilen metnin kaydı, değiştirilemez arşiv.

**Bu konuda müşteri belgesine hiçbir hukuki iddia yazılmayacak — önce hukukçu onayı.**

### 2.3 ⚠️ EN KRİTİK TEKNİK TUZAK — Mandatsreferenz

Mandate belgesindeki **Mandatsreferenz**, CenterCom'un bankaya gönderdiği tahsilat dosyasındaki referansla **birebir aynı olmalıdır.**

Üyenin banka ekstresinde gördüğü referans, imzaladığı belgedeki referanstan farklıysa → itiraz durumunda savunmasız kalırız.

**İki yol:**
- (a) Biz CenterCom'un referans formatını/sırasını kullanırız
- (b) CenterCom bizim ürettiğimiz referansı kabul eder

**Bu, CenterCom'a sorulacak en kritik teknik sorudur.** Diğer her şey konfor; bu hukuki.

---

## 3. CenterCom'a Sorulacaklar

### 3.1 Veri erişimi

| # | Soru | Neden |
|---|---|---|
| Q1 | Public/partner API var mı? Dokümantasyon? | Tüm canlı senkronizasyonun temeli |
| Q2 | API yoksa, üçüncü taraf entegrasyonu politikası nedir? | EGYM/THEDEX ile entegreler — hangi koşulla? |
| Q3 | Üye verisi **toplu import** yeteneği var mı? (CSV vb.) | Yazma yolunu elle girişten kurtarır |
| Q4 | Üye/aidat/durum verisi **export** edilebiliyor mu? Hangi formatta? Otomatik/zamanlanmış olabilir mi? | Okuma yolunun temeli — A4 (ödeme görünürlüğü) buna bağlı |
| Q5 | Export/import Elite'in kendi ekranından yapılabiliyor mu, yoksa CenterCom desteği mi gerekiyor? | Bağımsızlığımızı belirler |

### 3.2 SEPA / Mandate

| # | Soru | Neden |
|---|---|---|
| Q6 | **Mandatsreferenz'i kim üretir?** CenterCom otomatik mi atıyor, yoksa dışarıdan verilebiliyor mu? | §2.3 — en kritik |
| Q7 | Mandate verisi (IBAN, referans, tarih) dışarıdan içeri alınabiliyor mu? | Elle giriş yükünü belirler |
| Q8 | CenterCom mandate belgesini (PDF) saklıyor mu, yoksa sadece veriyi mi? | Arşiv sorumluluğunun nerede olacağını belirler |
| Q9 | Elite'in Gläubiger-ID'si nedir? | Mandate belgesinde zorunlu alan |
| Q10 | CenterCom'un kendi dijital sözleşme akışı mandate'i nasıl topluyor? Hangi imza formunu kullanıyor? | Hukuki referans noktası — onlar nasıl çözmüş? |

### 3.3 Diğer

| # | Soru | Neden |
|---|---|---|
| Q11 | Aile hesabı / veli-çocuk yapısı var mı? | Çocuk-ebeveyn alanının mimarisi |
| Q12 | Ruhezeit (dondurma) akışı var mı? | Sözleşme yaşam döngüsü |
| Q13 | Push bildirim yeteneği var mı? | Çakışma riski — biz push atacağız |
| Q14 | Sözleşme AGB versiyonlama yapıyor mu? | Dijital sözleşme tasarımı |
| Q15 | DATEV/Lexware aktarımı Elite'te **aktif mi?** | B2 — güven hamlesi (Elite habersiz görünüyor) |

---

## 4. Yetenek → Bağımlılık Matrisi

| Faz 1 yeteneği | CenterCom bağımlılığı | İşbirliği olmazsa |
|---|---|---|
| Mobil app — profil, kuşak, sınav, gelişim | ❌ Yok | Sorunsuz çalışır |
| Mobil app — ders programı, rezervasyon | ❌ Yok (bizde yaşar) | Sorunsuz çalışır |
| Mobil app — QR check-in, antrenman geçmişi | ❌ Yok (bizim veri) | Sorunsuz çalışır |
| Mobil app — push, haber, seminer, rozet | ❌ Yok | Sorunsuz çalışır |
| Web sitesi — deneme dersi, içerik | ❌ Yok | Sorunsuz çalışır |
| Yönetim paneli | ❌ Yok | Sorunsuz çalışır |
| Dövüş sporu katmanı | ❌ Yok | Sorunsuz çalışır |
| **Dijital sözleşme — toplama + imza + arşiv** | ❌ Yok | Sorunsuz çalışır |
| **Dijital sözleşme — CenterCom'a veri akışı** | ⚠️ Kısmi | Elle giriş (bugünkü süreçle aynı, ama girdi kalitesi daha iyi) |
| **Üyelik durumu senkronizasyonu** | ⚠️ Var | Periyodik export → import (Elite kendi verisini çeker) |
| **Ödeme / aidat görünürlüğü (A4)** | ✅ **Tam bağımlı** | Export yoksa **bu yetenek düşer.** Tek gerçek kayıp. |

**Özet:** Faz 1'in **tek gerçek kırılgan noktası** ödeme/aidat görünürlüğü. Geri kalan her şey CenterCom'dan bağımsız ayakta duruyor.

---

## 5. Senaryolar

| Senaryo | Koşul | Sonuç |
|---|---|---|
| **A — Tam API** | CenterCom API açar | Gerçek zamanlı iki yönlü akış. Sürpriz olur. |
| **B — Export/Import** | Elite kendi verisini dışa/içe aktarabiliyor | Periyodik senkronizasyon. **Gerçekçi hedef.** |
| **C — Sıfır işbirliği** | Hiçbir otomatik yol yok | Elle giriş + elle export. Faz 1 yine teslim edilir; ödeme görünürlüğü düşer. |

**Planlama varsayımı: C.** B'yi hedefle, A'yı bonus say.

---

## 6. Hukukçuya Doğrulatılacaklar

| # | Konu | Neden |
|---|---|---|
| L1 | Elektronik SEPA mandate'in imza formu — QES şart mı, basit elektronik imza yeterli mi? | Dijital sözleşme akışının temeli. Kaynaklar çelişiyor. |
| L2 | İspat yükü karşısında hangi kanıt seti yeterli? (zaman damgası, IP, metin kaydı) | Tasarım gereksinimlerini belirler |
| L3 | 16 yaş altı üye için veli onayı — DSGVO Art. 8 kapsamı | Çocuk/ebeveyn alanının mimarisi |
| L4 | Açık grup sohbeti → barındırma sağlayıcısı sorumluluğu (DDG, DSA) | §11.1 (roadmap) müzakere pozisyonu |
| L5 | Çocuk üyelerin bulunduğu platformda koruyucu tedbir yükümlülüğü (JuSchG) | Aynı |

---

## 7. Stratejik Not — "CenterCom-Completer" Vizyonu

Uzun vadede Soluty, CenterCom kullanan **17.000+ DACH işletmesi** için modern/AI'lı bir tamamlayıcı ürün olma potansiyeline sahip.

**Ama bu tez tehlikeli bir bağımlılık yaratır:** Başkasının platformunun eksiği üzerine ürün kurmak. CenterCom o eksiği kapatırsa, ya da API'yi kapalı tutarsa, tez çöker.

**Bu yüzden:**
- Mimari **backend-agnostic** kurulur. CenterCom **ilk entegrasyon hedefi**, tek dayanak değil.
- Copilot/AI katmanı, **öncelikle bizim sahip olduğumuz veriden** beslenir (app kullanımı, dijital sözleşme, shop, web etkileşimi). CenterCom verisi **zenginleştirme katmanı**, temel değil.
- Aynı ürün Magicline kullanan bir stüdyoya da, hiç backend kullanmayan bir stüdyoya da satılabilmelidir.

---

*Belge sonu*
