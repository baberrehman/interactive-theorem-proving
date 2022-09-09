
Require Import Arith.
Require Import ZArith.
Require Import Bool.

Open Scope Z_scope.

Locate "_ * _".

Print Scope Z_scope.

Check 33%nat.

Check 0%nat.

Open Scope nat_scope.

Check 33.
Check 0.

Check true.
Check false.

Open Scope Z_scope.

Parameter max_int : Z.
Definition min_int := 1 - max_int.

Print min_int.

Definition cube := fun z:Z => z*z*z.
Definition cub1 (z:Z) := z*z*z.

Definition sum5 (z1 z2 z3 z4 z5 : Z) := z1+z2+z3+z4+z5.
Print sum5.
Check sum5.

(************
2.4 Computing
*************)

Definition Zsqr (z:Z) : Z := z*z.

Definition my_fun (f: Z -> Z) (z: Z) : Z := f (f z).

Eval cbv delta [my_fun Zsqr] in (my_fun Zsqr).

Eval cbv delta [my_fun] in (my_fun Zsqr).

(*******************
2.5 Sorts and Types
********************)

Check Z.

Check ((Z->Z) -> nat -> nat).

Check Set.

Check Type.

Definition Z_bin : Set := Z -> Z -> Z.