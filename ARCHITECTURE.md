# ARCHITECTURE.md

> **Rolü:** Repo'nun yapısal mimarisini açıklar. Hangi dosya/klasör neye hizmet eder, ne zaman doldurulur, ne zaman dondurulur.
>
> **Kapsam:** Bu doküman engagement'ın yaşam döngüsüne göre büyür. Şu an **sadece satış öncesi (pre-sales) dönemini** içerir. Satış gerçekleşirse, gerçek teknoloji mimarisi (uygulama katmanları, veri modeli, deployment) bu dokümana eklenecek.

---

## 1. Mevcut Dönem: Pre-Sales

Şu an Elite Kickboxing engagement'ı satış öncesi aşamasında. Tüm çalışma — müşteri profili, audit, araştırma, strateji, teklif draftı — kayıt altında ve **ileride bu engagement'ın nasıl kazanıldığını sorgulayacak biri için arşiv niteliğinde** saklanır.

**Ana teslimat hedefi:** `elite-strategic-roadmap-V2.md` — müşteriye hazırlanan stratejik yol haritası dokümanının aktif çalışma sürümü. (`elite-strategic-roadmap.md` = v1, dondurulmuş arşiv; tarihsel referans için korunur, artık güncellenmez.)

**Teslimat yapısı:** 1 ana roadmap (özet bölümler) + her bölüm için derinleşmiş ek doküman (Anhang/Appendix). Ana roadmap özetleri eklere referans verir.

---

## 2. Klasör Yapısı

```
elite/
├── README.md                              # repo girişi
├── CLAUDE.md                              # operational guidance (Claude için)
├── ARCHITECTURE.md                        # bu dosya
│
└── docs/
    ├── README.md                          # docs/ haritası
    │
    └── R&D/                               # satış öncesi tüm yazılı çalışma
        │
        ├── elite-strategic-roadmap-V2.md  # ANA TESLİMAT (aktif) — özet bölümler, eklere referans
        ├── elite-strategic-roadmap.md     # v1 — DONDURULMUŞ ARŞİV, sadece tarihsel referans
        │
        ├── appendices/                    # müşteriye giden derinleşme dokümanları
        │   ├── README.md
        │   ├── A-technical-audit.md       # Anhang A: mevcut site teknik denetim
        │   ├── B-legal-details.md         # Anhang B: §312k BGB, GoBD, DSGVO detayı
        │   ├── C-process-maps.md          # Anhang C: süreç haritaları (büyük format)
        │   ├── D-global-benchmarks.md     # Anhang D: dünya standartları, innovasyon
        │   ├── E-competitive-software.md  # Anhang E: 20+ rakip ürün analizi
        │   └── F-soluty-references.md     # Anhang F: Soluty referans projeleri
        │
        ├── research/                      # ham araştırma çıktıları (Soluty iç, arşiv)
        │   ├── README.md
        │   └── YYYY-MM-DD-<konu>-raw.md   # dondurulmuş, tarihli ham araştırma
        │
        ├── context/                       # müşteri & pozisyonlama
        │   ├── customer-profile.md        # planlandı, henüz oluşturulmadı — principals, dinamikler, karar mekanizması
        │   ├── our-positioning.md         # planlandı, henüz oluşturulmadı — yasak/tercih kelimeler, ton örnekleri
        │   └── meeting-notes/             # YYYY-MM-DD-<topic>.md
        │
        ├── strategy/                      # iç strateji notları (müşteriye gitmez)
        │   ├── three-horizons.md          # planlandı, henüz oluşturulmadı — üç ufkun hikayesi
        │   ├── phase-design.md            # planlandı, henüz oluşturulmadı — Horizont 1'in 4 fazı, bağımlılıklar
        │   └── win-strategy.md            # planlandı, henüz oluşturulmadı — kapanış yaklaşımı, itiraz yönetimi
        │
        ├── internal/                      # productization, kararlar, dersler, entegrasyonlar
        │   ├── productization-notes.md    # planlandı, henüz oluşturulmadı — ileride SaaS'a çıkarılabilecek bileşenler
        │   ├── decisions.md               # planlandı, henüz oluşturulmadı — engagement yönünü değiştiren kararlar
        │   ├── blackbox.md                # planlandı, henüz oluşturulmadı — incident & insight dersleri
        │   ├── integrations.md            # dış sistem entegrasyonları (referans, mevcut)
        │   └── centercom-integration.md   # CenterCom entegrasyon bağımlılıkları, senaryolar (mevcut)
        │
        ├── output/                        # üretilmiş PDF/HTML export çıktıları (build artifact)
        │
        └── assets/                        # görseller (ana doküman + ekler kullanır)
            ├── diagrams/                  # process map, timeline, konumlandırma matrisi
            └── screenshots/               # mevcut site kanıtları
```

---

## 3. Üç Katmanlı Bilgi Modeli

Bir konu (mesela "global benchmarks") üzerinde çalışıldığında bilgi üç katmana ayrılır. Her katmanın okuru, yaşam döngüsü ve yeri farklıdır.

| Katman | Konum | Okur | Yaşam döngüsü |
|---|---|---|---|
| **Ham araştırma** | `research/YYYY-MM-DD-<konu>-raw.md` | Soluty (iç) | Bir kez yazılır, dondurulur, tarihli arşiv |
| **Ek doküman (Appendix)** | `appendices/<harf>-<konu>.md` | Müşteri (derinleşmek isteyen) | Versiyonlanır (v1.0, v1.1...) |
| **Roadmap özeti** | `elite-strategic-roadmap-V2.md` ilgili bölümü | Müşteri (herkes) | Ana doküman versiyonu ile birlikte |

### Akış

Yeni bir konu çalışıldığında:

1. **Araştırma yapılır** → `research/` altına ham çıktı yazılır, tarih damgalı, dondurulur.
2. **Ek doküman damıtılır** → `appendices/` altına müşteriye uygun ton ve formatta yazılır.
3. **Özet çıkarılır** → `elite-strategic-roadmap-V2.md` içindeki ilgili bölüme yerleştirilir, sonunda eke referans verilir.

Aynı akış tüm konular için tekrar eder.

---

## 4. Klasör Açıklamaları

### `docs/R&D/elite-strategic-roadmap-V2.md`

Müşteriye hazırlanan ana teslimatın **aktif** çalışma sürümü. Çalışma versiyonu Almanca başlıklar + Türkçe iç notlarla yazılır. Final sürüm tam Almanca olur. Bölümleri özet niteliğindedir; her bölüm sonunda ilgili eke referans verilir. Versiyon numarası (v2.x) dosyanın kendi başlığında yaşar — bu doküman versiyon numarasını sabitlemez.

### `docs/R&D/elite-strategic-roadmap.md`

**v1 — dondurulmuş arşiv.** Artık güncellenmez, session start'ta okunmaz. Yalnızca "müşteriye ilk sürümde ne sunulmuştu" sorusuna cevap veren tarihsel referans olarak korunur.

### `docs/R&D/appendices/`

Müşteriye giden derinleşme dokümanları. Ana roadmap'in Anhang bölümleriyle birebir eşleşir (A, B, C, D, E, F). Harf prefix'i hem dosya sırasını hem ana doküman referansını netleştirir.

**Adlandırma:** `<harf>-<konu>.md` — örn. `D-global-benchmarks.md`

### `docs/R&D/research/`

Ham araştırma çıktıları. Müşteriye **gitmez**. Soluty'nin "biz bu tarihte ne biliyorduk, neye dayanarak önerdik" sorusuna cevap veren arşiv. İçinde alıntılar, kaynak linkler, çiğ notlar, ekran görüntüleri yer alabilir.

**Kural:** Bir kez yazılır, **dondurulur**. Güncellenmez. Yeni bilgi gelirse yeni tarihli dosya açılır.

**Adlandırma:** `YYYY-MM-DD-<konu>-raw.md` — örn. `2026-05-21-global-benchmarks-raw.md`

### `docs/R&D/context/`

Müşteriyle ilgili bilgi ve Soluty'nin pozisyonlama kararları.

- `customer-profile.md` — *planlandı, henüz oluşturulmadı* — kim oldukları, dinamikler, karar mekanizması
- `our-positioning.md` — *planlandı, henüz oluşturulmadı* — yasak/tercih kelimeler, ton örnekleri, üç ufkun Almanca isimleri
- `meeting-notes/` — her müşteri etkileşimi için bir dosya: `YYYY-MM-DD-<topic>.md`

### `docs/R&D/strategy/`

İç strateji notları. Müşteriye gitmez — ama appendix ve roadmap yazımının zihinsel zeminidir.

- `three-horizons.md` — *planlandı, henüz oluşturulmadı*
- `phase-design.md` — *planlandı, henüz oluşturulmadı*
- `win-strategy.md` — *planlandı, henüz oluşturulmadı*

### `docs/R&D/internal/`

Engagement-direction kararları, productization fırsatları, post-incident dersler, dış sistem entegrasyonları. Müşteriye gitmez.

- `productization-notes.md` — *planlandı, henüz oluşturulmadı*
- `decisions.md` — *planlandı, henüz oluşturulmadı*
- `blackbox.md` — *planlandı, henüz oluşturulmadı*
- `integrations.md` — mevcut; dış sistem entegrasyonları referansı (bkz. `CLAUDE.md` §4)
- `centercom-integration.md` — mevcut; CenterCom entegrasyon bağımlılıkları, açık sorular, senaryolar

### `docs/R&D/output/`

Üretilmiş (generated) PDF/HTML export çıktılarının bulunduğu build artifact klasörü — `scripts/build-pdf.sh` tarafından ana roadmap Markdown dosyasından türetilir. Kaynak değildir, elle düzenlenmez.

### `docs/R&D/assets/`

Hem ana roadmap hem appendix'ler tarafından kullanılan görseller.

**Adlandırma:** `<bölüm>-<amaç>-v<N>.{svg,png,fig}`
**Kural:** Kaynak dosyalar export'larla birlikte saklanır.

---

## 5. Dosya Adlandırma Kuralları

| Dosya tipi | Format | Örnek |
|---|---|---|
| Ana teslimat (aktif) | `elite-strategic-roadmap-V2.md` | (sabit; versiyon numarası dosya içi başlıkta yaşar) |
| Ana teslimat (arşiv) | `elite-strategic-roadmap.md` | v1, dondurulmuş |
| Appendix | `<harf>-<konu>.md` | `D-global-benchmarks.md` |
| Ham araştırma | `YYYY-MM-DD-<konu>-raw.md` | `2026-05-21-global-benchmarks-raw.md` |
| Toplantı notu | `YYYY-MM-DD-<konu>.md` | `2026-05-15-kickoff.md` |
| Görsel | `<bölüm>-<amaç>-v<N>.{svg,png}` | `section-3-positioning-matrix-v1.svg` |

---

## 6. Versiyonlama

| Konum | Versiyonlama yaklaşımı |
|---|---|
| `elite-strategic-roadmap-V2.md` | Aktif sürüm; sürüm numarası (`v2.x`) dosya başlığında ve commit message'larında işaretlenir |
| `elite-strategic-roadmap.md` | v1 — dondurulmuş arşiv, artık versiyon almaz |
| `appendices/*.md` | Ana roadmap ile aynı sürüm numarasını taşır |
| `research/*-raw.md` | Versiyonsuz — bir kez yazılır, dondurulur, tarih dosya adında |
| `context/`, `strategy/`, `internal/` | Versiyonsuz — yaşayan dokümanlar, git history versiyonlama görevini görür |

**Müşteriye gönderilen son sürüm:** Git tag ile işaretlenir (örn. `roadmap-v1.0`). Böylece "müşteri ne gördü" sorusu kesin cevaplanır.

---

## 7. Gelecek: Satış Sonrası

Eğer engagement satışa dönerse, bu doküman **eklemeli** olarak büyür. Mevcut `docs/R&D/` arşivi olduğu gibi durur — çünkü "bu müşteri nasıl kazanıldı?" sorusunun cevabıdır.

Eklenecek tahmini bölümler (şu an placeholder olarak işaretli, doldurulmaz):

- **Uygulama mimarisi** — katmanlar, modüller, servis sınırları
- **Veri modeli** — entity diyagramı, ana akışlar
- **Deployment & altyapı** — environment'lar, CI/CD, monitoring
- **Operasyon dokümanı** — runbooks, incident response, on-call

Bu bölümler bu doküman içinde ayrı başlıklar olarak eklenecek. Repo kökünde `src/`, `infra/`, `ops/` gibi klasörler açılacak.

---

*Bu doküman engagement'ın yaşam döngüsüne göre büyür. Mevcut sürüm yalnızca satış öncesi dönemi tanımlar.*

**Son güncelleme:** 2026-07-27
**Sürüm:** 0.2 (pre-sales only; ana teslimat referansı `elite-strategic-roadmap-V2.md`'ye güncellendi, v1 dondurulmuş arşiv olarak yeniden sınıflandırıldı; `docs/R&D/output/` eklendi; henüz oluşturulmamış context/strategy/internal dosyaları "planlandı" olarak işaretlendi)