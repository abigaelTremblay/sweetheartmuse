param([int[]]$Damage, [double[]]$Mult = @(1.0,0.75,0.65))
# SC6 combo damage estimator. Usage: .\combo.ps1 -Damage 24,14,20
# CAVEAT: multipliers are ONE of ~34 pairs that fit 3 measured combos; floor rounding is assumed, not proven.
# Hit 4+ silently reuses the last multiplier - UNKNOWN (Q32). Never trust a 4+ hit prediction over the in-game counter.
$t=0; $i=0
foreach($d in $Damage){
  $m = if($i -lt $Mult.Count){$Mult[$i]}else{$Mult[-1]}
  $v = if($i -eq 0){$d}else{[math]::Floor($d*$m)}
  "{0}  hit{1}: {2,3} x {3,-5} = {4,3}" -f ' ',($i+1),$d,$m,$v
  $t+=$v; $i++
}
"TOTAL (100/75/65) = $t"
$t2=0;$i=0; foreach($d in $Damage){ $m=@(1.0,0.80,0.60); $mm=if($i -lt 3){$m[$i]}else{0.60}
  $t2 += $(if($i -eq 0){$d}else{[math]::Floor($d*$mm)}); $i++ }
"TOTAL (100/80/60) = $t2"
"Listed sum        = $(($Damage|Measure-Object -Sum).Sum)"
if($Damage.Count -gt 3){ 'WARNING: hit 4+ multiplier is extrapolated (unknown) - totals above are guesses.' }

