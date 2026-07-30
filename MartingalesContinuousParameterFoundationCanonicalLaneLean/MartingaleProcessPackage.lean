import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterFoundation

structure MartingaleProcessPackage {Ω : Type u} [MeasurableSpace Ω] (F : FiltrationPackage Ω) where
  process : Ω → F.indexSet → ℝ
  adapted : ∀ t : F.indexSet, Measurable (process · t)
  integrable : ∀ t : F.indexSet, Integrable (process · t)
  martingaleProperty : ∀ s t : F.indexSet, s ≤ t → ∀ A : Set Ω, MeasurableSet A → A ∈ F.sigmaAlgebras s →
    ∫ x in A, process x s ∂ℙ = ∫ x in A, process x t ∂ℙ
  sampleContinuity : Prop

structure MartingaleEvidence {Ω : Type u} [MeasurableSpace Ω] {F : FiltrationPackage Ω} (M : MartingaleProcessPackage F) where
  sampleContinuityClosed : M.sampleContinuity

def MartingaleClosed {Ω : Type u} [MeasurableSpace Ω] {F : FiltrationPackage Ω} (M : MartingaleProcessPackage F) : Prop :=
  M.sampleContinuity

theorem martingale_closed_from_evidence {Ω : Type u} [MeasurableSpace Ω] {F : FiltrationPackage Ω} (M : MartingaleProcessPackage F) (E : MartingaleEvidence M) : MartingaleClosed M := by
  exact E.sampleContinuityClosed

end MartingalesContinuousParameterFoundation
end HautevilleHouse