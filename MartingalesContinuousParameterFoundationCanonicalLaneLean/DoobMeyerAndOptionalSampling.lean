import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterFoundationCanonicalLaneLean

structure DoobMeyerDecomposition {Ω : Type u} [MeasurableSpace Ω] (F : FiltrationPackage Ω) (X : MartingalePackage F) where
  predictableProcess : Ω → F.indexSet → ℝ
  martingaleComponent : MartingalePackage F
  decomposition : ∀ t, X.process · t = predictableProcess · t + martingaleComponent.process · t

structure DoobMeyerEvidence {Ω : Type u} [MeasurableSpace Ω] {F : FiltrationPackage Ω} {X : MartingalePackage F} (D : DoobMeyerDecomposition F X) where
  decompositionClosed : ∀ t, X.process · t = D.predictableProcess · t + D.martingaleComponent.process · t

def DoobMeyerClosed {Ω : Type u} [MeasurableSpace Ω] {F : FiltrationPackage Ω} {X : MartingalePackage F} (D : DoobMeyerDecomposition F X) : Prop :=
  ∀ t, X.process · t = D.predictableProcess · t + D.martingaleComponent.process · t

theorem doob_meyer_closed_from_evidence {Ω : Type u} [MeasurableSpace Ω] {F : FiltrationPackage Ω} {X : MartingalePackage F} (D : DoobMeyerDecomposition F X) (E : DoobMeyerEvidence D) : DoobMeyerClosed D := by
  exact E.decompositionClosed

structure OptionalSamplingTheorem {Ω : Type u} [MeasurableSpace Ω] (F : FiltrationPackage Ω) (X : MartingalePackage F) where
  stoppingTime1 : StoppingTimePackage F
  stoppingTime2 : StoppingTimePackage F
  condition : stoppingTime1.tau ω ≤ stoppingTime2.tau ω ∀ ω
  stoppedMartingaleEquality : Prop

end MartingalesContinuousParameterFoundationCanonicalLaneLean
end HautevilleHouse