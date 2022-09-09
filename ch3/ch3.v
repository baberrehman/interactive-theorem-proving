
Section Minimal_propositional_logic.

Variables P Q R T : Prop.

Theorem imp_trans : (P->Q) -> (Q->R) -> P -> R.
Proof.
  intros H H' p.
  apply H'.
  apply H.
  assumption.
Qed.

Print imp_trans.