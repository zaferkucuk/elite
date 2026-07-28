# CLAUDE.md

> **Role of this file**: Operational guidance for Claude when working on the Elite Kickboxing engagement. Not authoritative on behavioral rules or strategic positioning.

---

## 1. Purpose & Authority

This is a **guidance document**, not authority.

| Document | Contains | Authority |
|---|---|---|
| Project Instructions (Claude Project settings) | Behavior rules, positioning, language policy, safety gates | Authoritative |
| `ARCHITECTURE.md` | Repo structure, file naming, three-layer information model | Source of truth for structure |
| `docs/R&D/strategy/` documents | Strategic direction (three horizons, phase design) | Source of truth for scope |
| `docs/R&D/elite-strategic-roadmap-V2.md` | Customer-facing main deliverable (active) | Source of truth for customer messaging |
| `CLAUDE.md` (this file) | Navigation, references, operational hints | Guidance |

> `docs/R&D/elite-strategic-roadmap.md` (v1) is a frozen archive — historical reference only, no longer updated.

**Conflict resolution:** defer to Project Instructions for behavior; defer to ARCHITECTURE.md for structure; defer to strategy documents for scope and sequence; defer to roadmap draft for customer-facing language.

---

## 2. Session Start Protocol — MANDATORY

**At the start of every session, before any other action, Claude reads these three files in full:**

1. `CLAUDE.md` — operational guidance (this file)
2. `ARCHITECTURE.md` — repo structure and information model
3. `docs/R&D/elite-strategic-roadmap-V2.md` — current state of the main deliverable (active version; `elite-strategic-roadmap.md` is the frozen v1 archive, not read at session start)

This is non-negotiable. Reading takes a few seconds; skipping creates drift, contradictions, and lost context across sessions.

**Sequence:**

1. User triggers session: "başla", "devam", "devam et", or similar
2. Claude reads the three mandatory files in full (via `github:get_file_contents` from `zaferkucuk/elite`)
3. Claude reads the **active workstream document** if a workstream is in progress (see Workstream Workflow)
4. Claude presents a **session dashboard**:
   - Where we are (active workstream, % complete)
   - What's done since last session (if known)
   - What's next (current task)
   - Blockers (if any)
5. If FREE MODE (between workstreams) → list 3-5 candidate next actions, ask "neyi ilerletmek istiyorsun?"
6. Wait for user's next instruction.

**Do not skip step 2 even if context appears fresh.** Memory pointers can drift from document truth; the three files hold the truth.

**If a mandatory file is missing** (e.g. `elite-strategic-roadmap-V2.md` not yet created): say so explicitly, do not proceed silently. Surface the gap to the user.

---

## 3. Repo Structure (quick reference)

For full structure see `ARCHITECTURE.md`. Quick map:

```
elite/
├── README.md
├── CLAUDE.md                              ◀ this file
├── ARCHITECTURE.md
│
└── docs/R&D/
    ├── elite-strategic-roadmap-V2.md      ◀ MAIN DELIVERABLE (active)
    ├── elite-strategic-roadmap.md         ◀ v1, frozen archive — historical reference only
    ├── appendices/                        ◀ customer-facing deep documents (A–F)
    ├── research/                          ◀ raw research (Soluty internal, archived)
    ├── context/                           ◀ customer profile, positioning, meetings
    ├── strategy/                          ◀ internal strategy notes
    ├── internal/                          ◀ productization, decisions, integrations, blackbox
    ├── output/                            ◀ generated PDF/HTML export artifacts (build output)
    └── assets/                            ◀ diagrams, screenshots
```

---

## 4. Dış Sistem Entegrasyonları

Engagement boyunca birden fazla fazda (mobil app, web sitesi, Communication Cockpit, Content Engine vb.) kullanılan dış sistem entegrasyonları tek bir iç referans dokümanında biriktirilir: [`docs/R&D/internal/integrations.md`](docs/R&D/internal/integrations.md).

**Kısa özet:**

- **Onaylananlar** — Canva; Meta Business API; TikTok for Business API; YouTube Data API; Bunny.net + Cloudflare R2; Google Maps; Google My Business; Google Analytics 4
- **Değerlendirmede** — Google Calendar; Google Drive; Google Workspace SSO
- **Vazgeçilenler** — Buffer/SocialBee aracı katman (doğrudan platform API yolu seçildi); Bynder/Frontify kurumsal DAM (ölçek uyuşmazlığı); Hootsuite/Sprout Social (overkill, Soluty sistemi aynı işi yapar)

Karar gerekçeleri, müşteri-yüzü söylem, alternatif değerlendirmeleri ve karar geçmişi `integrations.md` dokümanında detaylı tutulur. Yeni entegrasyon kararı verildiğinde önce o doküman güncellenir; bu özet kısa kalır.

**Müşteri-yüzü söylem ayrımı:** `integrations.md` iç doküman olduğu için vendor adlarını açıkça kullanır. Müşteriye giden hiçbir metinde (roadmap, appendix, sunum) vendor adı geçmez — her entegrasyonun "müşteri-yüzü söylem" satırı, vendor adı kullanmadan, "Soluty sistemi + dünya standardı araçlar bir bütün hâlinde çalışır" çerçevesinde yazılmıştır.

---

## 5. Three-Layer Information Model

Every topic produces three artifacts at three different layers. This is the core working pattern.

| Layer | Location | Reader | Lifecycle |
|---|---|---|---|
| **Raw research** | `docs/R&D/research/YYYY-MM-DD-<topic>-raw.md` | Soluty (internal) | Frozen on creation, dated archive |
| **Appendix** | `docs/R&D/appendices/<letter>-<topic>.md` | Customer (deep readers) | Versioned (v1.0, v1.1) |
| **Roadmap summary** | `docs/R&D/elite-strategic-roadmap-V2.md` (relevant section) | Customer (all) | Lives with main doc version |

**Flow:** raw research → distill into appendix → extract summary into roadmap section + reference appendix at end.

**Implication for Claude:** when a topic is worked on, ask which layer the current task targets. Don't write to one layer assuming it will trickle to others — flow is explicit.

---

## 6. Customer & Engagement Reference

### Customer

| Field | Value |
|---|---|
| Legal entity | E.K. Elite Kickboxing GmbH |
| Location | Kleiststraße 23-26, 10787 Berlin (Schöneberg/Wittenbergplatz) |
| Handelsregister | HRB 169242 B, Amtsgericht Charlottenburg |
| Website | https://elite-kickboxing.de/ |
| Estimated members | ~250+ (based on GMB review volume + Instagram base) |
| GMB rating | 4.9 / 5 (86 reviews as of May 2026) |
| Instagram | @elitekickboxinggym (~4.485 followers) |

### Stakeholder roles

| Role | Engagement function |
|---|---|
| Owner / Geschäftsführer (#1) | Decision authority, vision setter; ego-driven, low tech literacy |
| Operations lead (#2) | Internal champion, real product user, carries "one platform" pain |
| Trainers (4) | Subject matter for capability design; world-class credentials, brand asset |
| Members | End users in Phase 1 (mobile app); voice in Phase 0 user interviews |

Detailed personal context lives in `docs/R&D/context/customer-profile.md`.

### Engagement vision (three horizons)

| Horizont | Theme | Standard | Phase count |
|---|---|---|---|
| Horizont 1 | Fundament — operations on rails | Berlin standard | 4 phases (Mitglieder Core, Web, Social+WhatsApp, Accounting) |
| Horizont 2 | Wachstum & Integration | European standard | TBD (3-4 phases — to be designed) |
| Horizont 3 | Intelligente Operation | Best-in-Europe | TBD (open-ended) |

---

## 7. Documentation Map (where work goes)

| Concern | Location |
|---|---|
| Customer principals, dynamics | `docs/R&D/context/customer-profile.md` *(planned, not yet created)* |
| Language/tone decisions | `docs/R&D/context/our-positioning.md` *(planned, not yet created)* |
| Past meeting notes | `docs/R&D/context/meeting-notes/YYYY-MM-DD-<topic>.md` |
| Site audit findings | merged into `docs/R&D/appendices/A-technical-audit.md` (raw in `research/`) |
| Legal risk landscape | `docs/R&D/appendices/B-legal-details.md` (raw in `research/`) |
| Process maps | `docs/R&D/appendices/C-process-maps.md` |
| Global benchmarks | `docs/R&D/appendices/D-global-benchmarks.md` (raw in `research/`) |
| Competitive software analysis | `docs/R&D/appendices/E-competitive-software.md` (raw in `research/`) |
| Soluty references | `docs/R&D/appendices/F-soluty-references.md` |
| Three-horizon narrative | `docs/R&D/strategy/three-horizons.md` *(planned, not yet created)* |
| Phase design | `docs/R&D/strategy/phase-design.md` *(planned, not yet created)* |
| Closing strategy | `docs/R&D/strategy/win-strategy.md` *(planned, not yet created)* |
| Customer-facing main deliverable | `docs/R&D/elite-strategic-roadmap-V2.md` (active); `elite-strategic-roadmap.md` = v1, frozen archive |
| Diagrams (process maps, timelines, matrices) | `docs/R&D/assets/diagrams/` |
| Site issue screenshots | `docs/R&D/assets/screenshots/` |
| Productization opportunities | `docs/R&D/internal/productization-notes.md` *(planned, not yet created)* |
| Direction-changing decisions | `docs/R&D/internal/decisions.md` *(planned, not yet created)* |
| External system integrations (internal reference) | `docs/R&D/internal/integrations.md` |
| CenterCom integration dependencies & scenarios (internal reference) | `docs/R&D/internal/centercom-integration.md` |
| Post-incident lessons | `docs/R&D/internal/blackbox.md` *(planned, not yet created)* |
| Generated PDF/HTML export artifacts | `docs/R&D/output/` (build output, see `scripts/build-pdf.sh`) |

---

## 8. Research & Analysis Tools

### Web research

| Domain | Use cases | Recommended starting points |
|---|---|---|
| Competitor analysis | Berlin/DACH kickboxing & combat sports studios, software products | Google search, direct site visits, Capterra/G2 reviews |
| Software market | Studio management platforms (Magicline, Eversports, Gymdesk, etc.) | Capterra, GetApp, Software Advice, vendor pricing pages |
| Legal jurisprudence | §312k BGB, GoBD, DSGVO, LG/BGH rulings | Bird & Bird, Noerr, Datenschutzkanzlei, BMJV press, dejure.org |
| Global benchmarks | World-class martial arts academies, fitness chains | Direct site visits, YouTube tours, industry press |
| Industry reports | Sector data, sizing | DSSV, IHRSA, Statista DACH fitness |

### Site analysis tools (free)

| Tool | Purpose |
|---|---|
| HostingChecker, IPinfo, WhoIsHostingThis | IP, ASN, hosting country (DSGVO check) |
| BuiltWith, Wappalyzer | Tech stack detection |
| SSL Labs, crt.sh | TLS quality, subdomain discovery |
| PageSpeed Insights, GTmetrix, WebPageTest | Core Web Vitals, performance |
| SecurityHeaders.com, Mozilla Observatory | Security header grading |
| Screaming Frog SEO Spider (free, 500 URL) | Site-wide SEO crawl |
| Schema.org Validator, Google Rich Results Test | Structured data validation |
| Chrome DevTools → Network panel | Google Fonts CDN check (LG München I risk) |

Manual URL checks: `/robots.txt`, `/sitemap.xml`, `/llms.txt`, `/agb`, `/impressum`, `/datenschutz`.

### Customer system access

| System | Access policy |
|---|---|
| Customer's WordPress admin | No access — diagnose from public side only |
| Google Business Profile | No access — NAP correction will be a Phase 0 deliverable |
| Social media accounts | No access — read public only |
| Customer member data, contracts, payment records | No access until Phase 1 contract signed |

When access is needed, the user requests it from the customer in writing, in a controlled way, with documented scope.

---

## 9. Workstream Workflow

### State transitions

```
PLANNED → ACTIVE → COMPLETED
              ↓
            PAUSED → ACTIVE (resume)
              ↓
            CANCELLED
```

### Subgoal complete

1. Mark subgoal complete in detail line of memory
2. Update workstream % if significant
3. No document write needed at this granularity

### Workstream complete

1. Clear workstream from memory, mark complete
2. Update relevant strategy/roadmap document with final state
3. Run transition checks (below)
4. Load next workstream if ready

### Workstream pause

1. Record resume point in memory: file/section + last action
2. Update workstream document with PAUSED marker + resume instructions
3. Run transition checks

### Workstream resume

1. Read workstream document → find PAUSED section
2. Validate resume point (file/section exists, last action verifiable)
3. Move workstream to ACTIVE in memory
4. Confirm context with user before proceeding

### Transition checks (3-point)

Before committing any workstream transition (complete / pause / cancel):

1. All open tasks resolved or explicitly deferred (no orphaned ☐ in current scope)
2. Memory and underlying document consistent (no drift)
3. If PAUSE — resume point recorded with file/section and last action

If any check fails: stop, inform the user, offer rollback.

### User commands

| Command | Action |
|---|---|
| "Workstream X tamam" | Complete workflow |
| "Workstream X duraklat" | Pause workflow (with resume point) |
| "Workstream X dön" | Resume workflow (validate resume point first) |
| "Workstream X iptal" | Cancel workflow (requires explicit "evet") |

### Status values

- WORKSTREAM / SUBGOAL: PLANNED | ACTIVE | PAUSED | COMPLETED | CANCELLED
- TASK: ☐ pending | ☑ complete

---

## 10. Engagement Gotchas

Operational quirks specific to this engagement, not policy.

### Owner ego is a sequencing tool, not an obstacle

When the owner proposes futuristic features (face recognition, "best in Europe", etc.), the wrong move is to dismiss or warn. The right move is to honor it, place it in Horizont 3, and use it as proof that we hear them. The roadmap structure exists partly to absorb visionary ideas without disrupting Phase 0/1.

### Operations lead is the real product user

Drafting decisions should privilege the operational lead's pain over the owner's vision. Owner signs the contract; operations lead lives with the product daily. Win the operations lead in writing (their words quoted in the roadmap) and the owner follows.

### Pricing is never floated casually

Pricing is approved by the user (Soluty side) before any number reaches a customer-facing artifact. Numbers carried over from chat or memory must be re-verified at the moment of writing.

### Phase 0 is the only commitment in play

Until Phase 0 contract is signed, Phase 1+ scope is illustrative — not promised. Phase 1 details belong in the roadmap as direction, not commitment. The roadmap's "Nächste Schritte" section should commit only to Phase 0.

### Legal claims age fast

§312k BGB jurisprudence is actively evolving (BGH ruling 22.05.2025 — I ZR 161/24 — Kündigungsschaltfläche). Any legal claim cited in customer-facing material must be verified within 90 days of writing. If older, re-verify before sending.

### Competitor claims need recent primary source

Stating "Magicline doesn't do X" or "Eversports lacks Y" requires primary source within last 12 months (vendor docs, recent Capterra review with date). Wrong competitor claims kill credibility instantly.

### Two-language drift risk

Turkish working drafts and German final text must say the same thing. When a German edit is made directly in the roadmap, the Turkish working note in the corresponding `strategy/` section should be updated, not abandoned. Periodic consistency check before customer-facing review.

### Three-layer discipline

When working on a topic, always be explicit about which layer is being written: raw research, appendix, or roadmap summary. Don't conflate. Raw research is frozen on creation; appendix is versioned; roadmap summary references appendix.

### Vendor names stay internal

Vendor adları (Canva, Meta, TikTok, Bunny.net, Cloudflare vb.) yalnızca `docs/R&D/internal/integrations.md` ve diğer iç dokümanlarda kullanılır. Müşteriye giden hiçbir metinde (roadmap, appendix, sunum, e-posta) vendor adı geçmez. Müşteri-yüzü söylem her entegrasyon için `integrations.md` içindeki ilgili satırda yazılıdır — oradan alınarak müşteri metnine işlenir.

### Markdown table rendering in PDF export

When the roadmap goes to PDF, large markdown tables sometimes break across pages awkwardly. Keep critical comparisons to ≤6 columns and use page-break-friendly section dividers. For complex matrices, ship a separate landscape-orientation appendix page.

### One workstream at a time means it

Switching workstreams mid-task without an explicit pause is the fastest way to lose context. If the user asks something off-current-workstream, surface the conflict ("we're in W2; this question is W3") and ask whether to switch or queue.

---

## 11. Closing Note

```
Project Instructions                  → How Claude behaves (Authoritative)
ARCHITECTURE.md                       → How the repo is structured (Authoritative)
docs/R&D/strategy/                    → What we propose (Source of truth for scope)
docs/R&D/elite-strategic-roadmap-V2.md → What the customer reads (Source of truth for messaging)
  (elite-strategic-roadmap.md = v1, frozen archive)
CLAUDE.md (this file)                 → How to navigate the work (Guidance)
```

When uncertain, consult Project Instructions, surface the decision to the user, or default to the safer no-op.

---

*Operational guidance only. Authority lives in the documents above.*

**Last Updated:** 2026-07-27
**Version:** 0.4 (main deliverable reference updated to `elite-strategic-roadmap-V2.md`, v1 reclassified as frozen archive; `docs/R&D/output/` added; not-yet-created context/strategy/internal files marked as planned)
