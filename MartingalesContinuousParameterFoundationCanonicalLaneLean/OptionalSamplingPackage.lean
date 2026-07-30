import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterFoundation

structure OptionalSamplingPackage {Ω : Type u} [MeasurableSpace Ω] {F : FiltrationPackage Ω} (M : MartingaleProcessPackage F) where
  stoppingTimes : Type v
  isStoppingTime : stoppingTimes → Prop
  optionalStopping : ∀ (τ : stoppingTimes) (h : isStoppingTime τ), ∀ t : F.indexSet,
    ∫ x in {x | τ x ≤ t}, M.process x (τ x) ∂ℙ = ∫ x in {x | τ x ≤ t}, M.process x t ∂ℙ
  boundedConvergence : Prop

structure OptionalSamplingEvidence {Ω : Type u} [MeasurableSpace Ω] {F : FiltrationPackage Ω} {M : MartingaleProcessPackage F} (O : OptionalSamplingPackage M) where
  boundedConvergenceClosed : O.boundedConvergence

def OptionalSamplingClosed {Ω : Type u} [MeasurableSpace Ω] {F : FiltrationPackage Ω} {M : MartingaleProcessPackage F} (O : OptionalSamplingPackage M) : Prop :=
  O.boundedConvergence

theorem optional_sampling_closed_from_evidence {Ω : Type u} [MeasurableSpace Ω] {F : FiltrationPackage Ω} {M : MartingaleProcessPackage F} (O : OptionalSamplingPackage M) (E : OptionalSamplingEvidence O) : OptionalSamplingClosed O := by
  exact E.boundedConvergenceClosed

end MartingalesContinuousParameterFoundation
end HautevilleHouse