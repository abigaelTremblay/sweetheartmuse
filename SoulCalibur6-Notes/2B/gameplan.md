# 2B — Gameplan (draft, NOT yet labbed)

> **Status 2026-10-14: zero lab time.** Nothing here is ✅. Sources:
> 📊 = `framedata.md` (wiki snapshot) · 📖 = official in-game Style Lesson (designer intent) ·
> 📚 = wiki Combos page (community) · ❓ = untested, see `../05-practice-queue.md` Q41+.
> Frame numbers are raw wiki values. **+N on block ≠ next move guaranteed**. A low/mid branch ≠ a true 50/50 until the gaps are tested.

## Identity in one line

**Suffix-router.** Lots of strings end in `6` / `4` / `8`. The last input picks the stance you land in:
`X6` → **AGS** (best frames) · `X4` → backstep into AGS (always worse frames than `X6`) · `X8` → **AL** (airborne).
You pick the suffix **while entering the string**, before you see block or hit (📖 "on hit or block").
So pick the stance before you commit, not as a reaction.

---

## NEUTRAL — choose before pressing

```
Mid range, want to start pressure
├─ 66B6     i16 M   +2 blk / +12 hit → AGS        📊 📖 ("best way to get in")
├─ 66A6     i20 L,H -6 / 0 → AGS (2nd hit must connect/be blocked)   📖 stops 8WR
├─ 3B       i20 M   0 blk / LNC → AL               📊 📖 main launcher
│   └─ 3(B) i32     +6 / LNC → AL                   📊 (slow — read only)
└─ 22B6     i18 M   -8 / +15 → AGS                  📊 📖 punish a sidestep whiff at spear range

Close, after they block
├─ AAA6     i12 H…  +6 / +12 → AGS                  📊 (all HIGHs → ❓ Q48 duck-able mid-string)
├─ 6BB6     i18 M…  -2 / "16G" → AGS                📊 ⚑F4 (hit value is a wiki typo?)
├─ b6       i14 H   0 / +6                          📊
├─ (B)      i14 MH  -2 / KND                        📊
└─ 1B6      i18 L   -6 / +2 → AGS                   📊 low that still routes into AGS
```

## DISADVANTAGE — they're plus or I'm punishing

```
Punish (fastest first, from data)
├─ i12  A / 2A / K / WR K                           📊 (2A = SL; A, K cancel with G)
├─ i14  b6 · (B) · 3K                               📊
├─ i16  6K → 6K(K) +2 KND (GI H/M)                  📊
└─ i20  3B  LNC → AL combo                          📊 (bigger punish if ❓ i20 fits)

Respect / avoid their mixup
├─ B+K     dodge H/M  [4-14] → Counter Bomb         📊
├─ 2B+K    dodge M/L  [4-14] → Counter Bomb         📊
└─ 4A+B+K  (CE-type) invincible from i4             📊 meter
```
❓ Q42: which i12 is actually best after −12 (3A, 1A, BA all −12 on block)?

## ADVANTAGE — AGS mixup (📖 Adept lesson)

The menu is chosen **before** pressing, at the moment AGS is entered:

```
In AGS after X6 HIT / plus
├─ AGS AA      i14 M (horizontal)   -8 blk          📖 mid
├─ AGS BB      i28 L → AL           -6 KND          📖 low   ❓ Q44 i28 = reactable?
├─ AGS A+G     i18 throw  61 dmg                    📖 throw
├─ AGS 4A+G    i18 throw  LNC → SC 66BB / CE        📖 throw
├─ AGS KK      i16 MMMMH LNC  CH-combo              📖 "counters a quick attack"
└─ AGS 4 (backstep) → AGS                           📖 vary distance/timing

In AGS after X6 BLOCKED (minus)
├─ AGS A+B     i22  dodges all attacks from i10, LNC   📖 📊  -16 blk
└─ AGS B+K     i32  64 dmg, -30 blk                    📖      (very unsafe)
   ✖ AGS AA / AGS KK  — lesson says these get counter-hit here
```
❓ What do AGS moves add on top of the entry frames? Example: `66B6` +2, then AGS KK i16. Does that beat a jab? Q43.

## AL (Aerial Leap) — enter via 3B · 3(B) · X8 · WR BK · AGS BB

```
AL on hit (combo)
├─ AL AAK   → 58 / +2AP  📚 (from 3B)
└─ AL AAB   → 63         📚 (from 3B)
AL from 3(B)
├─ AL B+K, AL AAK  79 · AL AAB 85                      📚
└─ AL B+K, LH AL AAK, 44(B)6, AGS A+B  130             📚 (conditional LH)
AL on block — ❓ which AL option is least bad? AL AAK is -28, AL AAB -16  📊
```

## ANG (Angler) — enter via (K) · 1(K) · 66(K) · B+K · 2B+K

`(K)` is -16 on block → **ANG from neutral is a commitment, not a frame trap** 📊.
`ANG K/6K/4K` = [AT]. Held versions return to ANG on block/whiff.
`ANG 236/214` → AGS · `ANG 8B+K` → AL.
❓ Q46: is there any ANG route that is safe on block?

## FC / WR — candidates only (⚑F6 in framedata)

The `F6` label means "the notes say crouch / TC". That is **not** proof the move ends crouched (see the Xianghua `3AK` error).
```
Candidate ends crouched?  1A · BA · FC A · 3AA · (A) · 2bA · 3B+K · 22AB
 └─ if ✅ crouched → choose BEFORE the recovery:
     ├─ WR A    i18 MH  -4 / +6     (Rising Slash, "suppresses 8WR" 📖)
     ├─ WR K    i12 MM  -8 / +2     fastest
     ├─ WR BK   i16     -14 / LNC → AL   (CH combo)
     └─ FC B+K  i26 M   -12 / LNC   📚 FC B+K, AAAB 71
```
❓ Q41 for each candidate.

## Branch nodes (3+ children = designed identity tools)

| Node | Children | Notes |
|---|---|---|
| `6K` | `6KK` -6 · `6KB` · `6K(K)` +2 KND GI · `6K6/4/8` | best: `6K6` -6/+6 📊 |
| `AAA` | `AAAA` · `AAAB` · `AAA6/4/8` | `AAA6` +6/+12 📊 📖 |
| `6B` | `6BB` · `6BK` (+2AP) · `6B(K)` -4 KND | `6BB6` → AGS 📖 |
| `AL AA` | `AL AAA` · `AL AAB` · `AL AAK` | air-combo enders |

## AP / Lethal Hit (stateful — check before relying on them)

`AP` (analysis points) stack on hit and carry across rounds 📖. Examples: `9K` +4, `44(K)` +3 (full hold), `6BK`/`AL AAK` +2.
Then `4K` etc. become Lethal Hits 📖. LH also triggers on: own soul gauge full (`4A`), own guard gauge full (`8(A)+(B)`), hitting from behind (`6BB…`), tip-range whiff punish with `22B`, full health (`SC 22AAA`), round-2 RE.
❓ Q47: at how many AP does `4K` turn into an LH?

## Combos — community, read the in-game counter

| Starter | Route | Wiki dmg | Status |
|---|---|---|---|
| 3B | AL AAK | 58 | 📚 ❓ |
| 3(B) | AL B+K, AL AAB | 85 | 📚 ❓ |
| 44(B)6 | AGS BA | 77 | 📚 ❓ |
| 22B6 | AGS AA | 47 | 📚 ❓ |
| FC B+K | AAAB | 71 | 📚 ❓ |
| AGS 4A+G | SC 66BB / CE | — | 📖 ❓ |
| [A+B] | CH 6BB6, AGS KK, 1B | 69 | 📚 ❓ |
The wiki page has errors: `FC B+K, SC 66BB` is listed at both 63 and 83, and the `44[B]` table contains `22B+K` routes. Don't trust a damage number until I see it in the in-game counter.

## Lab questions → `../05-practice-queue.md` (Q41–Q48)

