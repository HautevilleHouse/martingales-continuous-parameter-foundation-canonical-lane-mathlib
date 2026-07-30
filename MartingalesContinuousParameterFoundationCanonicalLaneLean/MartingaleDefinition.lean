import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterFoundationCanonicalLaneLean

structure MartingalePackage {Ω : Type u} [MeasurableSpace Ω] (F : FiltrationPackage Ω) where
  process : Ω → F.indexSet → ℝ
  adapted : ∀ (t : F.indexSet), Measurable (λ ω : Ω => process ω t) (F.sigmaAlgebras t)
  integrable : ∀ (t : F.indexSet), Integrable (λ ω : Ω => process ω t)
  martingaleProperty : ∀ (s t : F.indexSet), s ≤ t → ∀ A ∈ F.sigmaAlgebras s, ∫ ω in A, process ω s ∂μ = ∫ ω in A, process ω t ∂μ

structure MartingaleEvidence {Ω : Type u} [MeasurableSpace Ω] {F : FiltrationPackage Ω} (M : MartingalePackage F) (μ : Measure Ω) where
  integrableClosed : ∀ (t : F.indexSet), Integrable (λ ω : Ω => M.process ω t) μ
  martingalePropertyClosed : ∀ (s t : F.indexSet), s ≤ t → ∀ A ∈ F.sigmaAlgebras s, ∫ ω in A, M.process ω s ∂μ = ∫ ω in A, M.process ω t ∂μ

def MartingaleClosed {Ω : Type u} [MeasurableSpace Ω] {F : FiltrationPackage Ω} (M : MartingalePackage F) (μ : Measure Ω) : Prop :=
  (∀ t, Integrable (M.process · t) μ) ∧ (∀ s t, s ≤ t → ∀ A ∈ F.sigmaAlgebras s, ∫ ω in A, M.process ω s ∂μ = ∫ ω in A, M.process ω t ∂μ)

theorem martingale_closed_from_evidence {Ω : Type u} [MeasurableSpace Ω] {F : FiltrationPackage Ω} (M : MartingalePackage F) (μ : Measure Ω) (E : MartingaleEvidence M μ) : MartingaleClosed M μ := by
  exact And.intro E.integrableClosed E.martingalePropertyClosed

end MartingalesContinuousParameterFoundationCanonicalLaneLean
end HautevilleHouse