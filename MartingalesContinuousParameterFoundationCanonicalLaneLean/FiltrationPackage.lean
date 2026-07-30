import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterFoundation

structure FiltrationPackage (Ω : Type u) [MeasurableSpace Ω] where
  indexSet : Type v
  indexPreorder : Preorder indexSet
  sigmaAlgebras : indexSet → MeasurableSpace Ω
  filtrationCondition : ∀ s t : indexSet, s ≤ t → sigmaAlgebras s ≤ sigmaAlgebras t
  rightContinuity : Prop

structure FiltrationEvidence {Ω : Type u} [MeasurableSpace Ω] (F : FiltrationPackage Ω) where
  rightContinuityClosed : F.rightContinuity

def FiltrationClosed {Ω : Type u} [MeasurableSpace Ω] (F : FiltrationPackage Ω) : Prop :=
  F.rightContinuity

theorem filtration_closed_from_evidence {Ω : Type u} [MeasurableSpace Ω] (F : FiltrationPackage Ω) (E : FiltrationEvidence F) : FiltrationClosed F := by
  exact E.rightContinuityClosed

end MartingalesContinuousParameterFoundation
end HautevilleHouse