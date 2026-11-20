# Nightmare — Counter-Matchup (as Ivy)

> Written 2026-10-24. **Not a gameplan**: what he does and what Ivy should try against it.
> Data: `framedata.md` (📊 SuperCombo), Strategy page "Revenge Safejab Data" (📊), Dustloop System Data (📚 user page, "may be wildly inaccurate"), Style Lessons (📖).
> Ivy counters were ❓ until labbed. **§0 = lab results ✅ 2026-11-20** (overrides the ❓ below). Drills: Q72–Q79 in `../05-practice-queue.md`.
> Rules: +N ≠ guaranteed. A string's `i` = first hit only. Branches are chosen **before** the input, not as reactions.

---

## 0. Lab results ✅ (2026-11-20)

### vs Soul Wave (`6A+B`, i36)
| Answer | Result |
|---|---|
| `3A+G` / `2A+G` | ✅ Lows → hit through the armor (Q74) |
| `A+G` / grabs | ✅ Work (Q74). Up close, **run and grab** is OK if a bit slow |
| `CS` | ✅ Longer range, faster startup. Can be escaped if they mash (Q83) |
| `2A+G` spacing | ✅ Reaches if I've been pushed back enough. Too close → whiffs; step back first |
| `1K` / `2K` (i16 L) | ✅ Ample time (Q72). `1K` very short range, CH KND → `1K`. `2K` a bit longer |
| `3B` (i20, 22 dmg) · `33_99K` (📊 `(3)_(9)K` i16 24 dmg, but needs the run → ~i20) | ✅ Pass the **22-dmg threshold** (Q76) |
| `B+K` (i26) | ✅ Not bad. Its small step back takes me **out of base Soul Wave range**, and CH breaks Soul Wave with an LH |
| `B+K` LH > `G` > `6B[A] > SE [K] > SE B×3` | ⚠️ Very hard: the BT cancel leaves little airtime for `6B[A]`. **`3B` is more reliable** |
| `8B+K` | ❌ Way too long-ranged here; `2A+G`/`3A+G` cover those ranges (BA test Q75 still open) |

⚠️ **I trigger bubbles without meaning to.** Armor starts at f10 → it catches most of my moves mid-startup. DV is **+2 on block** ✅, big pushback on hit, slight on block.

### vs `6AA`
- ✅ Jab `A` into his armor → **not** enough time to `1K` the bubble (Q78).
- ✅ **Crouch under** works (Q73). `1AA` (TC) slips under, unreliably (startup-dependent).
- ✅ Crouch → whiff → **`FC 1B > BT A > 2A+BB` ~70** — a real punish (Q65).
- ❓ `FC 3A+B` here?

### vs `6B` / `6BB`
- ✅ **No block punish on `6BB`**: the pushback is too big (corrects "6BB -12 → punish" below).
- ✅ **Sidestep punish works.**
- ✅ vs `6B`: `3B > 6B8` = **48**, i20, reliable.
- ✅ vs `6BB` (sidestepped): `3B` LH `> 8A+B[B]` = **63**. The LH launches too high for `6B8`.
- ⚠️ `9BBB > 8A+B[B]` ~92, i42 — very inconsistent, he blocks if I'm late. Not recommended.
- ❌ `22[B] > SE 6B > 214[B] > SE B×3` — not a combo after a sidestep; `SE 6B` whiffs.

### vs `6K`
- ✅ Crouch → punish, same as `6AA`.

---

## 1. The bubble — what revenge actually is

| Fact | Source |
|---|---|
| Wiki name: **Armor**. SC6 name: **Revenge**. On absorb he auto-converts into **Dire Vengeance** (DV, the "bubble") | 📊 📖 |
| Absorbs **one** hit: High, Mid, **Special Mid, Special Low**. Threshold **0–21 dmg** (0–35 for his CE) | 📚 Dustloop |
| Absorbed hit deals **50%** damage | 📚 |
| After absorbing → move with **auto-GI** (aGI). Later hits get guard-impacted | 📚 · ✅ your CE observation matches |
| aGI mostly **does not trigger vs kick animations** | 📚 ❓ |
| Some revenge moves (e.g. `6A`) get brief invuln after absorbing; the CE does not | 📚 |
| His revenge attacks deal **chip on block** | 📚 |
| `DV` (`REVENGE 6A+B`): M, i36, 30 dmg, **+2 on block**, KND, **BA** (can't RE/GI it), then **NTC** | 📊 |
| `6AA` / `6BB` / `6K` have revenge on startup; CE "cannot be interrupted by highs or mids" | 📖 |

### What gets through (your assumptions checked)

| Your assumption | Verdict |
|---|---|
| Lows beat it | ✅📚 **True lows (`L`) only.** `SL` is absorbed → Ivy `2A` (SL) and `SL`-level moves **won't** work |
| Break attacks beat it | ✅📚 Dustloop: BA and UA pass through revenge, GI, RE and aGI. ⚠️ A web search said BA does **not**; conflict → Q75 |
| Grabs? | 📚 **Normal throws pass. Attack throws CAN be absorbed.** Ivy `A+G` (H, i18) = normal throw. `2A+G` / `3A+G` = low attacks leading into an animation (✅ you, 10-15). Low-level → likely pass, attack-throw → maybe absorbed. Unknown → Q74 |
| Command throw (CS) | H throw, i16, unbreakable. Should pass like any throw, but the input is too long to fit inside his armor window on reaction ❓ |
| 22+ damage beats it | 📚 Matches the 0–21 threshold. Raw or CH-modified damage? ❓ Ivy single hits ≥22: `3B` 22 M i20 · `B+K` 24 · `FC 1B` 26 · `SE 6B` 24 |
| Your CE was stopped | ✅ Consistent: 1st hit absorbed at 50%, rest aGI'd. Ivy CE = multi-hit; never fire it into his armor |
| iFC costs ~5f | 📚 Crouch **state** is frame 1 (ducks highs), but the **FC move list** starts at frame **7** → iFC moves ≈ **+6f**. ❓ Q78. Standing `1K`/`2K`/`1A` are already crouch-level lows, with no extra cost |

### Armor click → DV timing (📊 Strategy page)

> Max **recovery** of *your* move (after the armor clicks) to still do each action before DV lands.
> Each value = DV arrival (36, CE 30) − frames the action needs. **"Punished" is not an option — it's the line where DV hits you.**
> Block −1 (guard up) · RI −2 (RI parries BA; DV is BA) · `4A+B+K` = **Soul Charge** (invincible from f4) −4 · Sidestep: source hid "−5~6", published ~21 ❓; N/A vs DV (tracks? ❓)

| His move | Punished by | Block | RI | `4A+B+K` | Sidestep |
|---|---|---|---|---|---|
| `6A` `6B` `6K` `6A+B` `BT A+B` | 36f | **35f** | 34f | 32f | N/A |
| CE `A+B+K` | 30f | 29f | 28f | 26f | ~21f (also GI / RE / aGI / Revenge) |
| CE `[A+B+K]` | ~50f | N/A | ~48f | ~46f | – |

- "RI'ing Revenge Soul Wave leaves Nightmare **+1**."
- 📚 "Triggering revenge … transition[s] to another move, which allows **consistent safejabbing** regardless of whether revenge is triggered early or late."
- Meaning: if I hit the armor with a fast-recovering jab, I can block DV. He is then +2 **with NTC**. That's still his turn → §4.

---

## 2. Option trees — every revenge move

### `6A` — Blood Storm · **H** i22 · Armor[10-20] · -16 / -4

```
6A (H, armor 10-20)
├─ armor clicks ──────────── DV (M i36 BA, +2 blk) → NTC            §4
├─ 6AA   HH 20,30   +2 blk / KND   "Counter Hit Combo" (not NH-guaranteed)
├─ 6(A)  H → NSS    -8 blk / +4 hit                                 §3
├─ 6AaG  H → NBS    -11 blk / +1 hit                                §3
└─ (stop) 6A        -16 blk / -4 hit
```

**Weaknesses**
- **Every branch is High.** Crouching on frame 1 ducks the armor hit, so revenge never triggers. Do `6AA`'s 2nd hit and the NSS/NBS transitions whiff on a croucher? ❓
- `6A` -16 and `6(A)` -8 on block. `6AA` is **+2**, so don't press after blocking it.

**Ivy**
```
I expect 6A (or any high)
├─ crouch (2/1 guard) ─ ducked → whiff punish from FC (already crouched, no +6f)
│    ├─ FC 1B      M i18  26 KND   ← damage, ≥22 single hit
│    ├─ FC 3A+B    HH i20 BA 36    +6 blk
│    └─ FC 3(B)    L  i18 → SL     safe-ish -10
├─ low pre-emptive ─ 1K/2K L i16   (lands before his i22; low passes armor anyway)
└─ blocked standing ─ 6A -16 → your -16 punish · 6(A) -8 / 6AaG -11 → his stance, §3
```

### `6B` — Double Avenger · **M** i22 · Armor[10-22] · -16 / STN

```
6B (M, armor 10-22)
├─ armor clicks ── DV → NTC                                         §4
├─ 6BB  MM 18,20  -12 blk / KND  "Normal Hit Combo"
└─ (stop) 6B      -16 blk / STN
```

**Weaknesses**
- Mid → can't duck it. But **no stance transition**: only 2 branches.
- `6BB` -12, `6B` -16: block → punish. ⚠️ ✅ 2026-11-20: `6BB` pushback is too big to punish on block → **sidestep** it.
- During the armor he is **standing**, so `A+G` (H throw) is legal.

**Ivy**
```
I expect 6B
├─ block ─ 6B -16 → 3B > 6B8 ✅ 48 · 6BB -12 → ❌ too much pushback ✅ (don't punish 6B early: 6BB may follow)
├─ sidestep ─ 6BB whiffs → 3B LH > 8A+B[B] ✅ 63
├─ low pre-emptive ─ 1K L i16 (KND on CH) · 2K L i16 -4 hit
├─ throw ─ A+G i18 H (if he is mid-armor, standing)                ✅ grabs work (vs Soul Wave)
└─ ≥22 mid ─ 3B M i20 22 — threshold test                           ✅ passes (vs Soul Wave)
```

### `6K` — Adamantine Cracker · **H** i16 · armor (window not listed) · -4 / KND

```
6K (H, "fastest armor move")
├─ armor clicks ── DV → NTC                                         §4
└─ (no follow-up)  -4 blk / KND · [LH] on CH vs red health
```

**Weaknesses**
- High: **crouch ducks it**. Only -4 on block → **not punishable**, just your turn.
- No follow-ups, so a duck is the full answer.

**Ivy**
```
I expect 6K
├─ crouch → whiff → FC 1B / FC 3A+B / FC 3(B)   (same as 6A)
└─ blocked → -4 → my turn, nothing guaranteed
```

### `6A+B` — Soul Wave · **M** i36 · Armor[10-35] · -14 / KND
### `BT A+B` — Soul Wave (Ambush) · same properties

```
6A+B (M, armor 10-35 — almost the whole startup)
├─ armor clicks ── DV → NTC                                         §4
├─ hits ───────── KND, then grants NTC 📖
└─ blocked ────── -14
```

**Weaknesses**
- **i36**: slowest. 26-frame armor window, but it's a mid → any true low or BA landing before f36 wins.
- -14 on block → punish.
- Telegraphed (visible windup). ❓ Can I react to it?

**Ivy — best spot for pre-emptive answers**
```
I see Soul Wave start
├─ fastest low ── 1K / 2K i16 L        (press by ~his f20 to land before f36)
├─ throw ──────── A+G i18 H            Q74
├─ BA ─────────── 8B+K / 9B+K MM i28 BA +10   (press by ~his f8 → only on a guess)
│                 A+B i38 BA — ❌ too slow to beat i36 from a reaction
├─ just block ─── -14 → punish
└─ ❌ CE / any multi-hit mid ─ first hit absorbed, rest aGI'd ✅
```

### `A+B+K` — CE · MMM i40 · Armor[2+] · -18

```
CE (armor from f2; 0-35 threshold; no post-absorb invuln)
├─ uncharged  A+B+K    80 dmg, -18 blk
└─ charged   [A+B+K]  110 dmg, UA
```

**Ivy**
- **Block** it → -18 → biggest punish you have.
- Lows / BA / throw also pass. 📚 GI and RE also listed as beating it.
- `[A+B+K]` is UA: **don't block**. Step / hit him (BA, low) / RI.
- Safejab vs uncharged: your recovery ≤29f to block the absorb-follow-up.

---

## 3. Stance branches he can end in

### `NSS` (via `6(A)` +4 on hit, -8 on block)

```
NSS
├─ NSS K     H i10   -10 blk   STN on CH       ← fastest; HIGH
├─ NSS bA    H i14   48 dmg (just frame)  -16
├─ NSS A     H i26   -10        (Tech Crouch 13-22)
├─ NSS (A)   M i26   -4 → NSS
├─ NSS B     M i20   -14 LNC
├─ NSS aB    M i27   -18 / a(B) -2 · LH on whiff punish
└─ exits ── B+K → NLS · 6B+K → NBS · 236 → GS
```

**Weaknesses**
- **Fast options (`K` i10, `bA` i14, `A` i26) are all High**: a crouch beats them. Mids are i20+.
- So after a blocked `6(A)` (-8): **crouch, or a low** loses only to `NSS B`/`(A)`/`aB` (i20–27).
- `NSS B` -14 and `aB` -18 → punish on block.

**Ivy**
```
Blocked 6(A) (he is -8, in NSS)
├─ stand guard ── NSS has no lows → blocks everything; punish B -14 / aB -18
├─ crouch ─────── ducks K / bA / A (H); eats B / (A) / aB (M) ❌
└─ 1K / 2K L i16 ─ beats i20+ mids; do they duck K i10 / bA i14? ❓ Q77
```

### `NBS` (via `6AaG`, -11 block / +1 hit)

```
NBS
├─ NBS K   M i10   -8 / +2 → NBS ; KK MH -8 / STN
├─ NBS A   L i24   -20 blk / KND CH ; (A) L -12 → NSS
├─ NBS B   M i26   -2 blk / LNC CH
└─ exits ── B+K → NLS · 4B+K → NSS · 236 → GS
```

**Weaknesses**
- **Has a low** (`NBS A` L i24, -20) → crouch-block it and punish.
- `NBS K` i10 mid beats most of my buttons → after `6AaG`, block first.

**Ivy**
```
Blocked 6AaG (he is -11, in NBS)
├─ guard (stand) ─ K/KK/B blocked; A (low) hits you ❌
├─ guard (crouch)─ A blocked (-20 → punish); K/B mids hit you ❌
├─ 1K/2K i16 ───── beats A i24 and B i26; loses to K i10
└─ ❓ which does he pick? Read the habit, then pick a guard
```

---

## 4. After DV — Night Terror Charge (NTC)

DV = BA (can't RE/GI it), **+2 on block**, KND on hit. Then **one** NTC move:

| His NTC option | Lvl / i | Blk | My answer |
|---|---|---|---|
| `NTC 6BBB` | MMMMMM i22 · BA | **+4** | Block. BA → don't RE/GI |
| `NTC KB` | **H**M i14 | -4 | Crouch ducks `K`. Does `B` still hit? ❓ |
| `NTC 66KK` | MM i16 · BA | 0 | Block |
| `NTC 2A+B` / `4KK` | become attack throws 📊 | – | ❓ |
| `NTC NSS A+B` | MM | +4 | GI 4-11 vs verticals → don't use verticals |
| `NTC NBS A+B` | MMMH | +6, jails | aGI vs non-kick horizontals → **kicks**? ❓ |
| `NTC GS AA` / `aBB` / `KK` / `A+B` | H/M · several BA | -2 to +10 | ❓ |

**Rule:** after DV, block. Don't RE (his best NTC follow-ups are BA).

---

## 5. Summary — Ivy counter shortlist (❓ unless marked ✅ — see §0)

| Need | Pick | Why |
|---|---|---|
| Fastest true low | `1K` L i16 (KND on CH) · `2K` L i16 (-4 hit) | Passes revenge; crouch-level; no iFC cost. ✅ beats Soul Wave |
| Low with damage | `22K` L i24 18 KND · `1A+B` L i30 20 KND | Slower — only vs Soul Wave (i36) |
| Throw | `A+G` H i18 · `CS` | ✅ Grabs work. He must be standing (armored moves = standing) |
| Low throw | `2A+G` / `3A+G` L i28 | ✅ Pass the armor (vs Soul Wave). Mind `2A+G`'s spacing |
| ≥22 dmg | `3B` M i20 · `33_99K` ~i20 · `B+K` i26 | ✅ Pass the threshold. `B+K` also steps out of Soul Wave range |
| Break attack | `8B+K` / `9B+K` MM i28 +10 · `FC 3A+B` HH i20 +6 · `A+B` M i38 · `SE 4B` M i38 | BA passes revenge **and** DV's aGI 📚 · ❌ `8B+K` too long-ranged in practice |
| Duck | crouch vs `6A` / `6K` / NSS `K` `bA` `A` | ✅ vs `6AA` / `6K` |
| Whiff punish (already crouched) | `FC 1B` M i18 26 · `FC 3A+B` BA i20 | ✅ `FC 1B > BT A > 2A+BB` ~70 |
| ❌ Avoid | `2A` (SL — absorbed) · CE / multi-hit strings into armor · RE vs DV/NTC (BA) · jab into armor then `1K` ✅ too slow | |

### Matchup plan
1. **Default = block and punish.** `6A` / `6B` -16, `6A+B` -14, CE -18. ⚠️ `6BB` → **sidestep**, not block-punish ✅.
2. **Highs (`6A`, `6K`, NSS fast options) → crouch.** Then `FC 1B > BT A > 2A+BB` ✅.
3. **Soul Wave windup → `1K`/`2K`, `3B`, low grabs, or `A+G`/`CS` up close** ✅.
4. **Armor clicked → stop pressing, block DV** (+2 him, NTC). Don't RE.
5. Never throw multi-hit strings into a known armor start.
6. ⚠️ His armor starts at f10 → **I trigger bubbles by accident** ✅. Prefer the answers above over random pokes.
