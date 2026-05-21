# ARCHITECTURE.md

> **Rolü:** Repo'nun yapısal mimarisini açıklar. Hangi dosya/klasör neye hizmet eder, ne zaman doldurulur, ne zaman dondurulur.
>
> **Kapsam:** Bu doküman engagement'ın yaşam döngüsüne göre büyür. Şu an **sadece satış öncesi (pre-sales) dönemini** içerir. Satış gerçekleşirse, gerçek teknoloji mimarisi (uygulama katmanları, veri modeli, deployment) bu dokümana eklenecek.

---

## 1. Mevcut Dönem: Pre-Sales

Şu an Elite Kickboxing engagement'ı satış öncesi aşamasında. Tüm çalışma — müşteri profili, audit, araştırma, strateji, teklif draftı — kayıt altında ve **ileride bu engagement'ın nasıl kazanıldığını sorgulayacak biri için arşiv niteliğinde** saklanır.

**Ana teslimat hedefi:** `elite-strategic-roadmap.md` — müşteriye hazırlanan stratejik yol haritası dokümanı.

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
        ├── elite-strategic-roadmap.md     # ANA TESLİMAT — özet bölümler, eklere referans
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
        │   ├── customer-profile.md        # principals, dinamikler, karar mekanizması
        │   ├── our-positioning.md         # yasak/tercih kelimeler, ton örnekleri
        │   └── meeting-notes/             # YYYY-MM-DD-<topic>.md
        │
        ├── strategy/                      # iç strateji notları (müşteriye gitmez)
        │   ├── three-horizons.md          # üç ufkun hikayesi
        │   ├── phase-design.md            # Horizont 1'in 4 fazı, bağımlılıklar
        │   └── win-strategy.md            # kapanış yaklaşımı, itiraz yönetimi
        │
        ├── internal/                      # productization, kararlar, dersler
        │   ├── productization-notes.md    # ileride SaaS'a çıkarılabilecek bileşenler
        │   ├── decisions.md               # engagement yönünü değiştiren kararlar
        │   └── blackbox.md                # incident & insight dersleri
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
| **Roadmap özeti** | `elite-strategic-roadmap.md` ilgili bölümü | Müşteri (herkes) | Ana doküman versiyonu ile birlikte |

### Akış

Yeni bir konu çalışıldığında:

1. **Araştırma yapılır** → `research/` altına ham çıktı yazılır, tarih damgalı, dondurulur.
2. **Ek doküman damıtılır** → `appendices/` altına müşteriye uygun ton ve formatta yazılır.
3. **Özet çıkarılır** → `elite-strategic-roadmap.md` içindeki ilgili bölüme yerleştirilir, sonunda eke referans verilir.

Aynı akış tüm konular için tekrar eder.

---

## 4. Klasör Açıklamaları

### `docs/R&D/elite-strategic-roadmap.md`

Müşteriye hazırlanan ana teslimat. Çalışma versiyonu Almanca başlıklar + Türkçe iç notlarla yazılır. Final sürüm tam Almanca olur. Bölümleri özet niteliğindedir; her bölüm sonunda ilgili eke referans verilir.

### `docs/R&D/appendices/`

Müşteriye giden derinleşme dokümanları. Ana roadmap'in Anhang bölümleriyle birebir eşleşir (A, B, C, D, E, F). Harf prefix'i hem dosya sırasını hem ana doküman referansını netleştirir.

**Adlandırma:** `<harf>-<konu>.md` — örn. `D-global-benchmarks.md`

### `docs/R&D/research/`

Ham araştırma çıktıları. Müşteriye **gitmez**. Soluty'nin "biz bu tarihte ne biliyorduk, neye dayanarak önerdik" sorusuna cevap veren arşiv. İçinde alıntılar, kaynak linkler, çiğ notlar, ekran görüntüleri yer alabilir.

**Kural:** Bir kez yazılır, **dondurulur**. Güncellenmez. Yeni bilgi gelirse yeni tarihli dosya açılır.

**Adlandırma:** `YYYY-MM-DD-<konu>-raw.md` — örn. `2026-05-21-global-benchmarks-raw.md`

### `docs/R&D/context/`

Müşteriyle ilgili bilgi ve Soluty'nin pozisyonlama kararları.

- `customer-profile.md` — kim oldukları, dinamikler, karar mekanizması
- `our-positioning.md` — yasak/tercih kelimeler, ton örnekleri, üç ufkun Almanca isimleri
- `meeting-notes/` — her müşteri etkileşimi için bir dosya: `YYYY-MM-DD-<topic>.md`

### `docs/R&D/strategy/`

İç strateji notları. Müşteriye gitmez — ama appendix ve roadmap yazımının zihinsel zeminidir.

### `docs/R&D/internal/`

Engagement-direction kararları, productization fırsatları, post-incident dersler. Müşteriye gitmez.

### `docs/R&D/assets/`

Hem ana roadmap hem appendix'ler tarafından kullanılan görseller.

**Adlandırma:** `<bölüm>-<amaç>-v<N>.{svg,png,fig}`
**Kural:** Kaynak dosyalar export'larla birlikte saklanır.

---

## 5. Dosya Adlandırma Kuralları

| Dosya tipi | Format | Örnek |
|---|---|---|
| Ana teslimat | `elite-strategic-roadmap.md` | (sabit) |
| Appendix | `<harf>-<konu>.md` | `D-global-benchmarks.md` |
| Ham araştırma | `YYYY-MM-DD-<konu>-raw.md` | `2026-05-21-global-benchmarks-raw.md` |
| Toplantı notu | `YYYY-MM-DD-<konu>.md` | `2026-05-15-kickoff.md` |
| Görsel | `<bölüm>-<amaç>-v<N>.{svg,png}` | `section-3-positioning-matrix-v1.svg` |

---

## 6. Versiyonlama

| Konum | Versiyonlama yaklaşımı |
|---|---|
| `elite-strategic-roadmap.md` | Müşteriye gönderilen sürümler `v1.0`, `v1.1` etiketleriyle commit message'larında ve dosya başlığında işaretlenir |
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

**Son güncelleme:** 2026-05-21
**Sürüm:** 0.1 (pre-sales only)