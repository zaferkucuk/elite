# Kararlar (Decision Log)

> İç doküman. Müşteriye gitmez. Engagement yönünü değiştiren kararlar burada kayıt altına alınır.

---

## 2026-07-27 — Elite Faz 1 geliştirmesi, Corex platform-katmanlı mimariyle yapılacak (~%30 ek süre)

**Karar:** Elite Faz 1 kapsamındaki bazı süreçler (ödeme yönetimi §5.7, sözleşme yenileme §5.5, etkinlik yönetimi ve biletleme §5.1/§5.7 ve benzerleri) yalnızca Elite'e özel kod olarak değil, Corex'in katmanlı mimarisine (platform/core → salon-vertical → kickboxing-vertical → Elite'e özel) uygun şekilde geliştirilecek. Bu, Faz 1'in Soluty içi geliştirme süresini tahmini **%30** artırıyor (kesin değil, ilerleyen aşamalarda detaylandırılacak).

**Gerekçe:** Bu süreçler yalnızca Elite'e değil — muhtemelen salon sektörü dışındaki başka işletme yazılımlarına (genel iş süreçleri seviyesinde) ve salon/dövüş sporu vertical'ında başka müşterilere de lazım olacak. Doğru seviyede inşa edilirse (core / salon-vertical / kickboxing-vertical / Elite'e özel), gelecekteki ürünler çok daha ucuza ve hızlı geliştirilebilir. Örnek: kuşak sistemi (Graduierung) core'a değil, kickboxing-vertical seviyesine yazılacak — genel bir salon yazılımı ihtiyacı değil, dövüş sporuna özgü.

**Müşteriye etkisi:** Yalnızca **süre** — fiyat etkilenmiyor. Elite'e bu kararın gerekçesi **bildirilmeyecek**; müşteri açısından tek görünen şey teslim tarihi. Bilinçli tercih.

**Alternatifler değerlendirildi:**
- Elite'e tamamen özel/bespoke kod — daha hızlı Faz 1, sıfır yeniden kullanılabilirlik. Reddedildi.
- Katmanlı, platforma hazır mimari (seçilen) — Faz 1 süresini uzatıyor, gelecekteki ürünler için yatırım.

**Risk (kayıtlı, bilerek kabul edildi):** Karar şu an **tamamen öngörüye/stratejik bahse dayanıyor** — somut bir ikinci müşteri veya prospect yok. İkinci ürün/müşteri hiç gelmezse yatırımın karşılığı olmaz. Zafer bu riski açıkça kabul ediyor; gerekçe: Almanya yazılım sektörü ortalama teslim hızı düşük (örnek: harici shop tedarikçisi 1.5 yıldır teslim edememiş), %30 ek süreye rağmen Soluty'nin teslimatının hâlâ sektör ortalamasının üzerinde hızlı olacağı öngörülüyor.

**Geri döndürülebilirlik / açık kalan konular:**
- Hangi özelliğin core / salon-vertical / kickboxing-vertical / Elite-özel seviyesine yazılacağı **henüz belirlenmedi** — Faz 1 geliştirmesi ilerledikçe özellik özellik karara bağlanacak.
- Tahmini oran: kodun **en fazla %20'si** gerçekten Elite'e özel kalacak (kaba tahmin).
- Proje kazanılırsa Elite reposu tamamen Corex reposunun içine taşınacak — o noktada platform/domain/vertical ayrımı Corex'in kendi extraction disipliniyle resmi hâle gelecek.
- F.6 (roadmap-V2.md süre tahmini) bu kararı yansıtacak şekilde güncellenecek — özellik bazlı kırılım netleşmeden kesin sayı yazılmayacak, **henüz açık.**
