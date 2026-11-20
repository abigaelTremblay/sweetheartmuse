# PlantUML Flowcharts

Paste any block into **https://www.plantuml.com/plantuml/uml/** (or the JS renderer).
✅ **All four validated against the live PlantUML server** — invalid syntax returns
HTTP 400, these return 200.

| # | Diagram | Use |
|---|---|---|
| 1 | Core decision flow | "What do I press *right now*?" |
| 2 | Move node trees | See every branch off `AA`, `BB`, `66B`, `6B`… |
| 3 | Guard-break mixup | The stand/crouch triangle + the loop |
| 4 | Stance map | What SXS/PXS actually give me |

---

## 1. Core decision flow

> Activity syntax. Each `switch` = **pick ONE before pressing**; boxes stacked under one case are a real sequence (combo), not alternatives. Values are 📊 raw data unless marked.

```plantuml
@startuml
title Xianghua - Core Decision Flow (choose ONE per situation)

start
switch (Situation, read BEFORE committing)
case (NEUTRAL)
  switch (Pick one)
  case (gap close)
    :66K  i14 -8;
  case (safe advance)
    :66B  i20 -2;
  case (poke H,L)
    :6AA  i14;
  case (poke node)
    :BB  i14;
  endswitch
case (THEY ARE MINUS)
  if (Sure it's punishable?) then (yes)
    :k6  i14 KND;
  else (no)
    :4K  i16 -2 KND;
  endif
case (I AM PLUS)
  :BB node - choose low or mid
  BEFORE the branch input;
  note right: not a guaranteed 50/50 (Q33/Q37)
case (THEY WHIFFED)
  :3B  i18 LNC;
  :3B+KK ender (57 measured);
case (I AM DOWN)
  switch (Pick one - vary)
  case (reversal)
    :G then RE;
  case (GI read)
    :G then 6G;
  endswitch
case (THEY START RE)
  :BB(B) then SXS A+B;
  note right: LH route = 88 measured
endswitch
stop
@enduml
```

---

## 2. Move node trees

> The point of this one: **which moves give me a choice.** A node with a LOW
> branch *and* a MID branch is a mixup. A node with an `[SXS]`/`[PXS]` branch is
> stance access.

```plantuml
@startuml
hide empty description
left to right direction
title Xianghua - Move Node Trees (branching)

state "NEUTRAL" as N

state "A  i10" as A
state "AA  -10 / 0" as AA
state "AAA  -8 / +4" as AAA
state "AAB  -14" as AAB
state "AAB4  GI vs vertical" as AAB4
state "A(A)  -6 / +4  [SXS]" as AhA

state "B  i14" as B
state "BB  -8 / +2" as BB
state "BBB  -6 / +4  (mids)" as BBB
state "BBK  -8 / +4  (LOW)" as BBK
state "BB(B)  -6 / +4  [SXS]" as BhB

state "66B  i20  -2 / +6" as S66B
state "66BB  -14" as S66BB
state "66B[B]  +6  BA  52dmg" as S66BhB
state "66B4  GI vs vertical" as S66B4
state "66(B)  [SXS]" as S66hB

state "66A  i16  HIGH" as S66A
state "66AB  -8 / +6" as S66AB
state "66ABB  -12 / +4  (LOW)" as S66ABB
state "66ABA  -10  KND (MID)" as S66ABA

state "6B  i18" as S6B
state "6BB  -6  KND" as S6BB
state "6BA  -10 / -2  (LOW)" as S6BA
state "6B2  -16  [PXS]" as S6B2

state "9KK  i18  +2  STN" as S9KK
state "9KK2  -5  STN  [PXS]" as S9KK2

state "3A  i22  LOW" as S3A
state "3AK  -2  KND" as S3AK
state "3A2  -15  [PXS]" as S3A2

N --> A
A --> AA
AA --> AAA : more poke
AA --> AAB : vertical
AAB --> AAB4 : backstep GI
AA --> AhA : HOLD

N --> B
B --> BB
BB --> BBB : mids
BB --> BBK : LOW
BB --> BhB : HOLD

N --> S66B
S66B --> S66BB : on hit
S66B --> S66BhB : vs blocker
S66B --> S66B4 : vs vertical
S66B --> S66hB : HOLD

N --> S66A
S66A --> S66AB
S66AB --> S66ABB : LOW
S66AB --> S66ABA : MID

N --> S6B
S6B --> S6BB : chase
S6B --> S6BA : LOW
S6B --> S6B2 : whiff punish

N --> S9KK
S9KK --> S9KK2

N --> S3A
S3A --> S3AK : frame trap
S3A --> S3A2

state "SXS" as SXS
state "PXS" as PXS
AhA --> SXS
BhB --> SXS
S66hB --> SXS
S6B2 --> PXS
S9KK2 --> PXS
S3A2 --> PXS
SXS --> PXS : press 2

@enduml
```


---

## 3. Guard-break mixup

```plantuml
@startuml
hide empty description
title Xianghua - Guard Break Mixup Loop

state "I am +4 (or neutral)" as PLUS

state "THEY STAND GUARD" as SG
state "THEY CROUCH GUARD" as CG

state "BBK   M,M,LOW   +4" as BBK
state "66ABB H,M,LOW   +4" as A66
state "6BA   M,LOW     -2" as B6
state "aKB   M,M,LOW   KND" as AKB
state "A+G   50 dmg" as THROW
state "SXS A+G  +14  (via BB(B))" as STHROW

state "BBB   mids  +4" as BBB
state "9KK   +2 on BLOCK" as NKK
state "66B   -2 / +6" as S66B
state "66ABA KND" as A66M

PLUS --> SG
PLUS --> CG

SG --> BBK : true LOW
SG --> A66 : true LOW
SG --> B6 : true LOW
SG --> AKB : true LOW
SG --> THROW : throw pierces
SG --> STHROW : throw pierces

CG --> BBB : MID
CG --> NKK : MID
CG --> S66B : MID
CG --> A66M : MID

BBK --> PLUS : +4 LOOP
A66 --> PLUS : +4 LOOP
BBB --> PLUS : +4
NKK --> PLUS : +2

note bottom of CG
  Crouch guard = my THROWS WHIFF.
  Only MIDS open them.
end note

note bottom of SG
  2A is SL (Special Low):
  BLOCKED by standing guard.
  NOT a mixup tool.
end note
@enduml
```

---

## 4. Stance map

```plantuml
@startuml
hide empty description
title Xianghua - Stance Map

state "NEUTRAL" as N
state "SXS" as SXS
state "PXS" as PXS

N --> SXS : A(A)  i10  -6/+4
N --> SXS : BB(B) i14  -6/+4  (best)
N --> SXS : 66(A)+(B)  -8/+6
N --> PXS : 9KK2  i18  -5  STN (best)
N --> PXS : 6B2   -16  (whiff setup)
N --> PXS : 3A2   -15
SXS --> PXS : press 2

state "SXS/PXS K    i14  LH vs whiffed HIGH" as SK
state "SXS/PXS A+G  i18  +14" as SAG
state "SXS/PXS A+B  LH vs RE = 88" as SAB
state "SXS/PXS A    i18  HIGH  -2/+8" as SA
state "SXS B+K      GI vs M horizontal" as SBK
state "PXS BB  i20 LNC 57 (hit confirm)" as PBB
state "PXS A   i18 LOW" as PA
state "PXS AA  L,M" as PAA

SXS --> SK
SXS --> SAG
SXS --> SAB
SXS --> SA
SXS --> SBK
PXS --> SK
PXS --> SAG
PXS --> SAB
PXS --> PBB
PXS --> PA
PA --> PAA

note right of SXS
  SXS is OFFENSIVE ONLY.
  On block: cannot block, cannot move.
  Only escape = press 2 into PXS
  and hope their HIGH whiffs.
end note

note right of PBB
  Hit-confirm only.
  -14 if they blocked.
end note
@enduml
```

---

## Regenerating / validating

```powershell
# valid -> HTTP 200 ; syntax error -> HTTP 400
$src = Get-Content diagram.puml -Raw
$hex = ([Text.Encoding]::UTF8.GetBytes($src) | % { $_.ToString("x2") }) -join ""
Invoke-WebRequest "https://www.plantuml.com/plantuml/svg/~h$hex" -UseBasicParsing
```

⚠️ PlantUML **auto-closes a missing `endif`** — a rendered diagram is not proof the
logic is right, only that the syntax parses.


