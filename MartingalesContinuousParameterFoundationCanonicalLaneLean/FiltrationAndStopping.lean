import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterFoundationCanonicalLaneLean

structure FiltrationPackage (Ω : Type u) [MeasurableSpace Ω] where
  indexSet : Type v
  preorder : Preorder indexSet
  sigmaAlgebras : indexSet → MeasurableSpace Ω
  filtrationCondition : ∀ s t : indexSet, s ≤ t → MeasurableSpace.IsMeasurableSuperset (sigmaAlgebras s) (sigmaAlgebras t)
  rightContinuity : Prop

structure FiltrationEvidence {Ω : Type u} [MeasurableSpace Ω] (F : FiltrationPackage Ω) where
  filtrationConditionClosed : F.filtrationCondition
  rightContinuityClosed : F.rightContinuity

def FiltrationClosed {Ω : Type u} [MeasurableSpace Ω] (F : FiltrationPackage Ω) : Prop :=
  F.filtrationCondition ∧ F.rightContinuity

theorem filtration_closed_from_evidence {Ω : Type u} [MeasurableSpace Ω] (F : FiltrationPackage Ω) (E : FiltrationEvidence F) : FiltrationClosed F := by
  exact And.intro E.filtrationConditionClosed E.rightContinuityClosed

structure StoppingTimePackage {Ω : Type u} [MeasurableSpace Ω] (F : FiltrationPackage Ω) where
  tau : Ω → F.indexSet
  measurableCondition : ∀ (t : F.indexSet), {ω | tau ω ≤ t} ∈ F.sigmaAlgebras t

def StoppingTimeClosed {Ω : Type u} [MeasurableSpace Ω] {F : FiltrationPackage Ω} (τ : StoppingTimePackage F) : Prop :=
  ∀ (t : F.indexSet), {ω | τ.tau ω ≤ t} ∈ F.sigmaAlgebras t

theorem stopping_time_closed {Ω : Type u} [MeasurableSpace Ω] {F : FiltrationPackage Ω} (τ : StoppingTimePackage F) : StoppingTimeClosed τ :=
  τ.measurableCondition

end MartingalesContinuousParameterFoundationCanonicalLaneLean
end HautevilleHouse