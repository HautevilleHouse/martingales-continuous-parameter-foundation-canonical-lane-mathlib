import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterFoundationCanonicalLaneLean

structure DoobMeyerDecomposition (Ω : StochasticBasis) where
  M : Martingale Ω
  A : ℝ → Ω → ℝ -- predictable finite variation process
  decomposition : Prop
  uniqueness : Prop

structure DoobMeyerEvidence {Ω : StochasticBasis} (D : DoobMeyerDecomposition Ω) where
  decompositionClosed : D.decomposition
  uniquenessClosed : D.uniqueness

def DoobMeyerClosed {Ω : StochasticBasis} (D : DoobMeyerDecomposition Ω) : Prop :=
  D.decomposition ∧ D.uniqueness

theorem doob_meyer_closed_from_evidence {Ω : StochasticBasis} (D : DoobMeyerDecomposition Ω) (E : DoobMeyerEvidence D) :
    DoobMeyerClosed D := by
  exact And.intro E.decompositionClosed E.uniquenessClosed

end MartingalesContinuousParameterFoundationCanonicalLaneLean
end HautevilleHouse