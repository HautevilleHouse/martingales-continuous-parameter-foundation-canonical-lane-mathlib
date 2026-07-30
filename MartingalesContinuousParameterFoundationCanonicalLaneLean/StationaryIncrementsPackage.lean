import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterFoundation

structure StationaryIncrementsPackage {Ω : Type u} [MeasurableSpace Ω] {F : FiltrationPackage Ω} (M : MartingaleProcessPackage F) where
  incrementDistribution : ℝ → ℝ → MeasurableSpace ℝ
  stationaryCondition : ∀ h : ℝ, (incrementDistribution h 0) = (incrementDistribution 0 0)
  independenceCondition : Prop

structure StationaryIncrementsEvidence {Ω : Type u} [MeasurableSpace Ω] {F : FiltrationPackage Ω} {M : MartingaleProcessPackage F} (S : StationaryIncrementsPackage M) where
  independenceConditionClosed : S.independenceCondition

def StationaryIncrementsClosed {Ω : Type u} [MeasurableSpace Ω] {F : FiltrationPackage Ω} {M : MartingaleProcessPackage F} (S : StationaryIncrementsPackage M) : Prop :=
  S.independenceCondition

theorem stationary_increments_closed_from_evidence {Ω : Type u} [MeasurableSpace Ω] {F : FiltrationPackage Ω} {M : MartingaleProcessPackage F} (S : StationaryIncrementsPackage M) (E : StationaryIncrementsEvidence S) : StationaryIncrementsClosed S := by
  exact E.independenceConditionClosed

end MartingalesContinuousParameterFoundation
end HautevilleHouse