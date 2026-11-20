# Azwel — Gameplan (draft, first lab notes 2026-11-20)

> **Status 2026-10-14: zero lab time.** Nothing below §"Lab notes" is ✅. Marks:
> 📊 `framedata.md` (wiki snapshot) · 📖 official Style Lesson · 📚 wiki Strategy/Combos (community) · ❓ untested → `../05-practice-queue.md` Q49+.
> Frame numbers are raw wiki values, **in-mode**. A move from another weapon = **+8f** (📚). **+N on block ≠ next move guaranteed.**
> **2026-11-20: first lab notes ✅** → [Lab notes](#lab-notes--2026-11-20).

## Lab notes ✅ 2026-11-20

> My observations. Frame values I wrote match 📊 unless flagged ⚑.

### 50/50s
| Mix | Option A | Option B |
|---|---|---|
| **Axe jump** (same animation → they guess) | `9A` L i32 -16/+2 · TJ + TC · unsafe on block | `9B` M i32 -4/KND · 15% guard burst · TJ + TC · mid-reach rushdown, **really good at mid range** |
| **ToW low vs crouch-guard LH** | `ToW B+K` L i20, 54 dmg, -20/KND, mid reach, unsafe on block ⚑ not in `framedata.md` | `3B` M i20 -16/LNC, mid reach, LH vs crouch guard |
| **BoB loops** | `BoB AAK` ~ BoB — H H, fast, loops | `BoB AA 6K` ~ ToW > `K` — L L, slower, tech-crouches ⚑ 📊 `ToW K` is a stance shift to BoB; the L L is likely `ToW 6K` (LL i24) ❓ |

Combo ~70: `3B[B] > B4` / `66B` / `1A` (📚 `3B[B] > 1A` = 72).

### Projectiles & reach (Ivy equivalents)
| Range | Azwel |
|---|---|
| **Infinite** | `66A` (i20 -1/-12) · `44B` (i36 -14/-8; LH on long-range hit **teleports you close → combo**; hold `44[B]` = BA) |
| **Extremely long** (≈ Ivy `9B+K`) | `CoE 6B` (i30 -12/KND, 30 dmg, 9% guard burst, good knockback) ⚑ 📊 i28 |
| **Long** (≈ Ivy `8B+K` / `3A+G` / `66[A]` 2nd hit) | — |
| **Mid** (≈ Ivy `2A+G`, last range where their swings whiff) | — |

### Stupidly good moves
| Move | Why |
|---|---|
| `BoB B` | Long reach rushdown, TC + TJ, safe (i20 -8/KND ⚑ 📊 LNC). Combo **47**: `BoB B > 1A` |
| `ToW A` | Long reach rushdown, TC, 40 dmg BA, safe (i22 +2/KND). |
| `ToW A+B` | Long reach projectile, 42 dmg BA, **`G` cancel** to act immediately, safe (i42 +8/KND). Whiffs very close. Combo **58**: `ToW A+B > 9B` ⚑ not in `framedata.md` |
| `CoE B` | Backstep then rushdown, mid reach, safe (i26 -6/+14) |
| `CoE BB` | Projectile, -12/KND, extremely long reach, big knockback even on block → ring-outs |
| `ALMIGHTY A+B` | Like `ToW A+B` but **GI vs mids** and doesn't whiff up close. Must be sidestepped (📊 i42 +8 BA) |

**Getting into Almighty:** grabs, `6A+B`, `AAA`, `BBB`. The last three are -6 on block → usually I block first before the Almighty move. (Confirms 📖 `AAA`/`BBB` → Almighty — part of Q49.)

## Identity in one line

**Two layers at once.** *Weapon mode* (Sword / Axe / Spear / Almighty) decides **speed**: every move belongs to a weapon, and off-mode moves are 8f slower.
*Stance* (`K` BoB / `6K` ToW / `4K` CoE) decides **what's next**: the K button never kicks. `X K` / `X 6K` / `X 4K` = the same string with three different exits.
Compared to 2B: 2B chooses a stance suffix. Azwel chooses a suffix **and** has to track which weapon he's holding.

---

## STEP 0 — what mode am I in? (check before choosing anything)

```
Round start → UNFORMED (everything slow)                         📖
 ├─ want fast pokes / punish  → form SWORD   (A, AA, BB, 2A, AB…)  📖 "good first choice"
 ├─ want guard break / range  → form AXE     (6B, 66B, FC 3B)      📖
 ├─ want defence / low game   → form SPEAR   (1A, FC 1B)           📖
 └─ cornered, no weapon       → B+K (Pareidolia's Awakening) i10 SM −18, pushes away 📖 📊

Landed a THROW / 6A+B / 8WR A+B → ALMIGHTY (next move fast)   📖 📚 (📖 also lists AAA, BBB)
Used A+B or any Weapon Art                          → back to UNFORMED        📖
Soul Charge                                         → permanent ALMIGHTY       📖
```
📚 Strategy: Almighty = **fast for one move**. 📚 Getting counter-hit during startup = **no weapon formed**. ❓ Q49: confirm both; is listed `i` the in-mode value?

### Natural mode switches inside strings (📚 Strategy)

```
SWORD ──AB / BA──▶ AXE ──6BA──▶ SPEAR ──8A / 9A──▶ SWORD (pinch)
SWORD ──AAB / BBA──▶ SPEAR            AXE ──6BaB──▶ SWORD
```

---

## NEUTRAL — per mode, choose before pressing

```
SWORD (fast)
├─ A        i10 H   −8 / −2                  📊
├─ AB       i10 HM  −20 / LNC   ← go-to −10 punish; ends in Axe   📊 📚
├─ BB       i14 MM  −8 / 0                   📊
├─ 2A       i14 SL,SL −10 / +2   (2AK → BoB −2 / +10)             📊 📖
└─ 22B      i20 M   −4 / STN  → 22BK **+12 / STN**   ← stance entry that's OK on block  📊 📚

AXE (range, guard break)
├─ 6B       i14 M   −6 / 0   long poke                            📊 📚
│   ├─ 6BB   −0 / KND        📊 (📖 "use from a distance")
│   ├─ 6BA   −4 / −8 → SPEAR, then FC 1A / FC 1B / throw          📚 ❓
│   └─ 6BaB  −8 / +6 → SWORD                                       📊
├─ 66B      i24 M   −4 / LNC                                       📊
└─ 6B+K     i22 L   −24 / KND  ← "meme low"; Weapon Art → UNFORMED  📊 📚
     mix with 3B (i20 M −16 / LNC, LH vs crouch guard)             📖 Adept

SPEAR (defensive, low)
├─ 1A       i26 L   −12 / +6   GI[41-66] vs M,L                   📊
├─ 1B       i18 L   −16 / −4   GI[11-24] vs L                     📊
└─ FC 1B    i12 M   −14 / LNC  ← punishes lows / crouchers        📊 📚
```
📚 Sword has **no lows**: use `22B` + throws for the mix. Axe can only punish −14 or worse. Spear is weak to standing pokes.

---

## DISADVANTAGE — punish table by mode (📚 Strategy page, copied; empty = nothing listed)

Standing block:
| They are | Unformed | Sword | Axe | Spear | Almighty |
|---|---|---|---|---|---|
| −10 | | `AB` | | | `AB` |
| −12 | | | | | `8B+K` |
| −14 | | | `6B` | | |
| −16 | `236A+B+K` 💰 | `236A+B+K` 💰 | `236A+B+K` 💰 | `236A+B+K` 💰 | |
| −18 | `AB` | `Sword B+K` | `AB` / `6A` | `iFC 1B` | `Almighty B+K` |
| −20 | | | `3B` / W! `Ax B+K` | | `3B` / W! `Almighty 6B+K` |

Crouching block:
| They are | Unformed | Sword | Axe | Spear | Almighty |
|---|---|---|---|---|---|
| −11 | | `RCC AB` | | | `RCC AB` |
| −12 | `FC 2A+B` | `FC 2A+B` / `RCC AB` | `FC 2A+B` | `FC 1B` | `FC 1B` |
| −14 | | `WR B` / `RCC AB` | `FC 2A+B` / `6B` | | |
| −16 | `236A+B+K` 💰 | `236A+B+K` 💰 | `FC 3B` | | |
| −18 | `4A+B` | `Sword B+K` | | | |
| −20 | `FC 1B` | | `FC 3B` / W! `Ax B+K` | | `FC 1B` / W! `Almighty 6B+K` |

💰 = meter. W! = wall only. Read it as: **the mode I'm in decides how much I can punish.** Axe can't punish −10/−12 standing. ⚑ `FC 2A+B` is probably `FC A+B` (i12 M −8, listed in framedata) entered while holding down — ❓ not the standing `2A+B` (i26). ❓ Q50.
Respect their offence:
```
├─ GI / RE: standard system tools (see ../01-system-mechanics.md)
├─ SPEAR B+K (Aufheben)   i24 GI[4-16] vs M,L → counter      📊 📖 (Weapon Art → UNFORMED)
└─ AX B+K (Fallen Scholar) GI vs Highs [5-18], L KND          📊
```

---

## ADVANTAGE — stance mixups (only after HIT, except 22B)

📚 *"Don't perform stance transitions unless you hit. The exception is 22B."*
Hit-confirm windows: `2A` 9f · `22B` 13f · `22A` 5f (📚). `22A` is a **High** (📊).

```
In BoB (sword stance)  ← K / 2AK / 22BK / BoB AAK
├─ BoB A/AA/AAA  i12 H…   −6/−8 on blk                         📊 📖 "simple and quick"
├─ BoB AAK       −2 / +8 → BoB again (loop)                    📊 📖
├─ BoB B         i20 M    −8 / LNC  gap closer                 📊 📚
├─ BoB K         i14 H    −6 / +8, STN on CH                   📊
└─ BoB 6K / 4K   → ToW / CoE                                   📊

In ToW (axe stance)  ← 6K suffix / [3/6/9]K / 66K
├─ ToW B         i28 M BA  +8 / LNC   ⭐ guard crusher         📊 📖
├─ ToW A         i22 H BA  +2 / KND                            📊
└─ ToW 6K        i24 LL    −14 / 0                             📊 📖 low
   → B (mid) vs 6K (low) is the ToW mixup. i22–28 = slow ❓ reactable?

In CoE (spear stance)  ← 4K suffix / [1/4/7]K / 44K
├─ CoE B / BB    i26 M     −6 / +14  · −12 / KND   push away   📊 📖
├─ CoE 6B        i28 M     −12 / KND projectile                📊 📖
├─ CoE AB        i24 HM    −4 / KND → SWORD                    📊 📚
└─ CoE 4K        i28 L     −12 / KND                           📊
```
⚠️ 📚 **Counterplay they will use:** vs ToW/CoE on block → **sidestep + crouch-block**, or i12 `2A`. Don't enter a stance on block and then commit to a slow move.

---

## FC / WR — candidates only

```
⚑F6 says "crouch" (≠ ends crouched — Xianghua 3AK lesson):
2A · FC A · 4A+B · 6BB (TC[30-56]) · 9B · TOW 6K · …
 └─ if ✅ crouched → choose BEFORE recovery:
     ├─ FC 1B    i12 M  −14 / LNC   📊 📚 crouch launcher
     ├─ FC A+B   i12 M  −8 / +4  (+K/6K/4K exits)               📊
     ├─ FC 3B    i16 M  −12 / LNC  (Axe)                        📊
     ├─ FC 1A    i16 L  −14 / 0                                  📊
     └─ WR B     i14 M  −8 / +2  (Sword)                         📊
```
❓ Q51.

---

## Combos — community, read the in-game counter

| Starter | Route | 📚 dmg | Mode note |
|---|---|---|---|
| `AB` (−10 punish) | BnB starter | — | Sword → Axe |
| `22B` | `.BoB.AB`, CE | 69 | |
| `22B` | `.BoB.AAA` | 49 | no meter |
| `2BB` | `.BoB.AB` | 49 | |
| `B+K` (Sword) | `BA` | 54 | |
| `66B` | `6BB` / `6B:A` (just frame) | 53 / 56 | Axe |
| `FC 1B` | `6BA` → oki | 48 | Spear → Axe → Spear |
| `ToW.B` | `6B:A` | 60 | |
| `3B[B]` | `1A` | 72 | |
| `3A` CH | `AB` | 41 | |
| `FC 1B` | `66B`, CE | 91 | SC |
📚 Some values are from v2.21. Dustloop: Azwel `3B` has built-in scaling, so these totals don't follow the 75% rule (`../08-damage-model.md` §1b).

---

## 📚 Reddit "Azwel tips" (Jan 2020) vs wiki snapshot

> Source: r/SoulCalibur `esbxp4` (read via archive mirror). Two players, Season 2 era. **Older than the wiki** (v2.21 notes) → frame mismatches may be patches, not errors. Neither is ✅.

**Conflicts (number differs):**
| Move | Reddit 2020 | Wiki 📊 | Matters for |
|---|---|---|---|
| `22BK` on block | **+6** | **+12** | Q52 — the whole BoB-on-block plan |
| `2A` startup | i12 | i14 | punish / poke speed |
| `AA` on hit | +2 | 0 | |
| Unformed `B+K` | i12 | i10 | round-start option |
| `WR BB` | i12 | `WR B` i14 | crouch punish |
| `1BB` | "comboes on CH" | −8 / +8 (no CH flag) | Amesang: 1BB launch changed after Season 1 |

**Agrees with the wiki:** `22AK` 0 on block · `6BB` 0 on block · `FC 3A` 0, double high · `8WR A+B` −12, LH after all 3 Weapon Arts · `ToW B` +8 · `ToW A` +2 · `CoE AA` +2 · `AB` best punish · `FC 1B` i12 · Spear weak to standing pokes · `SC 8WR A+B` +2 BA · `SC 8A+B` −10.

**New — not in my notes yet (all ❓):**
```
Throw on hit → Almighty. Back throw = more dmg; forward throw → 1A oki
Unformed B+K: risky, 0 dmg, but CH = free weapon   (Strategy: better on trade)
SWORD  b4 LH after GI → BBA · 22B LH(whiff) → K K B+K 6BB · 22B hit → K AB 4A
AXE    6AA i18 0/KND jails · 66A projectile −1 · 9A L i32 "disturbingly good" low
       3B LH vs crouch → 6A+B 1A · 3B[B] 66B · FC3A W! FC3A W! 3B[B] 66B
SPEAR  4A i20 H, catches steps · 4A+B "best mid in spear", CH → 1BB 1A
       44B long mid projectile; held = BA · 7A L i40 surprise
STANCE BoB AAB CH true combo (ring out) · BoB K CH → 2BB K B B4
       CoE AB CH true combo → B4 · CoE b6 projectile · CoE 4K "sucks"
```
**Opinion vs data:** `4B` "sucks" vs 📊 +4 BA, GI vs M/L. `CoE 4K` "sucks" vs 📊 −12 KND low. Both are opinions, so test them.
## First 3 sessions (built from the 📖 lessons — tick in the queue)

| # | Goal | Do | Done when |
|---|---|---|---|
| 1 | **Read the mode** | Training mode, no dummy. Form each weapon (`A`, `6B`, `1A`). Watch the HUD / weapon. Do `B+K` from Unformed. Throw → Almighty. | I can name my mode without looking (Q49) |
| 2 | **Sword + BoB** | Punish recorded −10 with `AB`. `2A`→`2AK` on hit only (9f confirm). `22B`→`22BK` always. From BoB: `AAK` loop, `B`, `K`. | `AB` punish 8/10; I stop pressing `K` after a blocked `2A` |
| 3 | **Axe + ToW / Spear + FC** | `6B` at range; `6B+K` vs `3B` vs stand/crouch dummy. `ToW B` vs `ToW 6K`. `FC 1B` after blocking a low. | Q50–Q53 answered |

Then compare with 2B (`../2B/gameplan.md`, Q41–Q48). Pick one to go with Ivy + Xianghua.

## Lab questions → `../05-practice-queue.md` (Q49–Q55)



