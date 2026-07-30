import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterFoundationCanonicalLaneLean

structure LocalizingSequence {Ω : Type u} [MeasurableSpace Ω] (F : FiltrationPackage Ω) where
  times : ℕ → F.indexSet
  increasing : ∀ (n : ℕ), times n ≤ times (n+1)
  limit : Prop

structure LocalMartingalePackage {Ω : Type u} [MeasurableSpace Ω] (F : FiltrationPackage Ω) (M : MartingalePackage F) where
  locSequence : LocalizingSequence F
  stoppedMartingale : ∀ n : ℕ, MartingalePackage (stoppedProcess M.locSequence.times n) F

structure LocalMartingaleEvidence {Ω : Type u} [MeasurableSpace Ω] {F : FiltrationPackage Ω} {M : MartingalePackage F} (L : LocalMartingalePackage F M) where
  stoppedMartingaleClosed : ∀ n : ℕ, MartingaleClosed (L.stoppedMartingale n)

def LocalMartingaleClosed {Ω : Type u} [MeasurableSpace Ω] {F : FiltrationPackage Ω} {M : MartingalePackage F} (L : LocalMartingalePackage F M) : Prop :=
  ∀ n : ℕ, MartingaleClosed (L.stoppedMartingale n)

theorem local_martingale_closed_from_evidence {Ω : Type u} [MeasurableSpace Ω] {F : FiltrationPackage Ω} {M : MartingalePackage F} (L : LocalMartingalePackage F M) (E : LocalMartingaleEvidence L) : LocalMartingaleClosed L := by
  intro n
  exact E.stoppedMartingaleClosed n

structure StochasticIntegralPackage {Ω : Type u} [MeasurableSpace Ω] (F : FiltrationPackage Ω) (X : LocalMartingalePackage F) where
  integrand : Type? -- predictable process
  integral : Ω → F.indexSet → ℝ
  integralDefined : Prop

end MartingalesContinuousParameterFoundationCanonicalLaneLean
end HautevilleHouse