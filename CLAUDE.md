# CLAUDE.md

> **Role of this file**: Operational guidance for Claude when working on the Elite Kickboxing engagement. Not authoritative on behavioral rules or strategic positioning.

---

## 1. Purpose & Authority

This is a **guidance document**, not authority.

| Document | Contains | Authority |
|---|---|---|
| Project Instructions (Claude Project settings) | Behavior rules, positioning, language policy, safety gates | Authoritative |
| `02-strategy/` documents | Strategic direction (three horizons, phase design) | Source of truth for scope |
| `03-proposal/draft-de.md` | Customer-facing narrative | Source of truth for customer messaging |
| `CLAUDE.md` (this file) | Navigation, references, operational hints | Guidance |

**Conflict resolution:** defer to Project Instructions for behavior; defer to strategy documents for scope and sequence; defer to proposal draft for customer-facing language.

> **Status note (May 2026):** Many referenced documents listed below are not yet created. Until they ship, work from this CLAUDE.md + Project Instructions + existing audit/research artifacts. Surface gaps to the user rather than acting on assumptions.

---

## 2. Customer & Engagement Reference

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

Detailed personal context lives in `00-context/customer-profile.md` (not yet created — load when written).

### Engagement vision (three horizons)

| Horizont | Theme | Standard | Phase count |
|---|---|---|---|
| Horizont 1 | Fundament — operations on rails | Berlin standard | 4 phases (Mitglieder Core, Web, Social+WhatsApp, Accounting) |
| Horizont 2 | Wachstum & Integration | European standard | TBD (3-4 phases — to be designed) |
| Horizont 3 | Intelligente Operation | Best-in-Europe | TBD (open-ended) |

---

## 3. Documentation Map

| Layer | Location | Purpose | Load when |
|---|---|---|---|
| Project Instructions | Claude Project settings | Behavior rules, positioning, safety | Every session start |
| Context | `00-context/` | Customer profile, positioning notes, meeting records | Customer-facing work |
| Audit | `01-audit/` | Technical/SEO/GEO findings, compliance gaps, open questions | Diagnosis or current-state discussion |
| Strategy | `02-strategy/` | Three horizons, phase design, win strategy, competitive research | Scope or phase discussion |
| Proposal | `03-proposal/` | Outline, German draft, visual assets | Drafting or revising the customer document |
| Internal | `04-internal/` | Productization notes, decisions log, blackbox lessons | Pricing, productization, retrospection |
| This file | `CLAUDE.md` (repo root) | Operational navigation | Every session start |

### Sub-folder detail

**`00-context/`**
- `customer-profile.md` — principals, dynamics, decision-making patterns *(TBD)*
- `our-positioning.md` — concrete language/tone decisions, sample phrases *(TBD)*
- `meeting-notes/YYYY-MM-DD-<topic>.md` — one file per customer interaction

**`01-audit/`**
- `technical-seo-geo.md` — site audit, tech stack, SEO/GEO gaps ✅
- `compliance.md` — §312k BGB, GoBD, DSGVO, Google Fonts risk *(TBD)*
- `measurement-baseline.md` — PageSpeed, BuiltWith, security headers measurements *(TBD)*
- `open-questions.md` — pending customer clarifications *(TBD)*

**`02-strategy/`**
- `three-horizons.md` — horizon narratives, transitions *(TBD)*
- `phase-design.md` — Horizont 1 four-phase breakdown, dependencies, risks *(in progress in chat)*
- `competitive-research.md` — 20+ product market analysis ✅ (as artifact)
- `win-strategy.md` — closing approach, objection handling *(TBD)*

**`03-proposal/`**
- `outline-de.md` — section skeleton with descriptions ✅
- `draft-de.md` — full German proposal *(TBD, growing)*
- `assets/diagrams/` — process maps, timelines, positioning matrices
- `assets/screenshots/` — current-site issue proofs

**`04-internal/`**
- `productization-notes.md` — what's extractable for future SaaS *(TBD)*
- `decisions.md` — engagement-direction-changing decisions *(TBD)*
- `blackbox.md` — incident/insight learnings *(TBD)*

---

## 4. Engagement Entry Points

When working on a topic, start here:

| Concern | Location |
|---|---|
| Customer principals, dynamics | `00-context/customer-profile.md` |
| What language/tone to use | `00-context/our-positioning.md` + Project Instructions |
| What we found on the site | `01-audit/technical-seo-geo.md` |
| Legal risk landscape | `01-audit/compliance.md` |
| Why this sequence | `02-strategy/three-horizons.md` + `02-strategy/phase-design.md` |
| Phase scope | `02-strategy/phase-design.md` |
| Competitor positioning | `02-strategy/competitive-research.md` |
| Customer-facing narrative | `03-proposal/outline-de.md` (skeleton) → `draft-de.md` (full) |
| Section we already wrote | Search `draft-de.md` first; do not duplicate |
| Past meeting takeaways | `00-context/meeting-notes/` |
| Open questions for customer | `01-audit/open-questions.md` |
| Decision rationales | `04-internal/decisions.md` |
| What we'll productize later | `04-internal/productization-notes.md` |
| Lessons from prior incidents | `04-internal/blackbox.md` |

---

## 5. Research & Analysis Tools

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

## 6. Workstream Workflow

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
2. Update relevant strategy/proposal document with final state
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

## 7. Engagement Gotchas

Operational quirks specific to this engagement, not policy.

### Owner ego is a sequencing tool, not an obstacle

When the owner proposes futuristic features (face recognition, "best in Europe", etc.), the wrong move is to dismiss or warn. The right move is to honor it, place it in Horizont 3, and use it as proof that we hear them. The roadmap structure exists partly to absorb visionary ideas without disrupting Phase 0/1.

### Operations lead is the real product user

Drafting decisions should privilege the operational lead's pain over the owner's vision. Owner signs the contract; operations lead lives with the product daily. Win the operations lead in writing (their words quoted in the proposal) and the owner follows.

### Pricing is never floated casually

Pricing is approved by the user (Soluty side) before any number reaches a customer-facing artifact. Numbers carried over from chat or memory must be re-verified at the moment of writing.

### Phase 0 is the only commitment in play

Until Phase 0 contract is signed, Phase 1+ scope is illustrative — not promised. Phase 1 details belong in the proposal as direction, not commitment. The proposal's "Nächste Schritte" section should commit only to Phase 0.

### Legal claims age fast

§312k BGB jurisprudence is actively evolving (BGH ruling 22.05.2025 — I ZR 161/24 — Kündigungsschaltfläche). Any legal claim cited in customer-facing material must be verified within 90 days of writing. If older, re-verify before sending.

### Competitor claims need recent primary source

Stating "Magicline doesn't do X" or "Eversports lacks Y" requires primary source within last 12 months (vendor docs, recent Capterra review with date). Wrong competitor claims kill credibility instantly.

### Two-language drift risk

Turkish working drafts and German final text must say the same thing. When a German edit is made directly in `draft-de.md`, the Turkish working note in the corresponding `02-strategy/` section should be updated, not abandoned. Periodic consistency check before customer-facing review.

### Markdown table rendering in PDF export

When the proposal goes to PDF, large markdown tables sometimes break across pages awkwardly. Keep critical comparisons to ≤6 columns and use page-break-friendly section dividers. For complex matrices, ship a separate landscape-orientation appendix page.

### One workstream at a time means it

Switching workstreams mid-task without an explicit pause is the fastest way to lose context. If the user asks something off-current-workstream, surface the conflict ("we're in W2; this question is W3") and ask whether to switch or queue.

---

## 8. Quick Reference: File Locations

| Task | Location |
|---|---|
| Update customer principals or dynamics | `00-context/customer-profile.md` |
| Update language/tone decisions | `00-context/our-positioning.md` |
| Log a customer meeting | `00-context/meeting-notes/YYYY-MM-DD-<topic>.md` |
| Add audit finding | `01-audit/technical-seo-geo.md` or `compliance.md` |
| Log a measurement (PageSpeed, etc.) | `01-audit/measurement-baseline.md` |
| Add open question for customer | `01-audit/open-questions.md` |
| Define a horizon narrative | `02-strategy/three-horizons.md` |
| Design or revise a phase | `02-strategy/phase-design.md` |
| Add competitive intelligence | `02-strategy/competitive-research.md` |
| Refine the closing approach | `02-strategy/win-strategy.md` |
| Edit the proposal outline | `03-proposal/outline-de.md` |
| Add or revise a proposal section | `03-proposal/draft-de.md` |
| Add a process map or timeline | `03-proposal/assets/diagrams/` |
| Add a current-site screenshot proof | `03-proposal/assets/screenshots/` |
| Note a productization opportunity | `04-internal/productization-notes.md` |
| Log an engagement-direction decision | `04-internal/decisions.md` |
| Capture a post-incident lesson | `04-internal/blackbox.md` |

---

## 9. Closing Note

```
Project Instructions    → How Claude behaves (Authoritative)
02-strategy/            → What we propose (Source of truth for scope)
03-proposal/draft-de.md → What the customer reads (Source of truth for messaging)
CLAUDE.md (this file)   → How to navigate the work (Guidance)
```

When uncertain, consult Project Instructions, surface the decision to the user, or default to the safer no-op.

---

*Operational guidance only. Authority lives in the documents above.*

**Last Updated:** 2026-05-19
**Version:** 0.1
