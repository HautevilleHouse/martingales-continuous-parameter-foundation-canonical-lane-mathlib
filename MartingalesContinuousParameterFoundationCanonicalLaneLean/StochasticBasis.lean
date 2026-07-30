import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterFoundationCanonicalLaneLean

structure StochasticBasis where
  omega : Type
  F : Set (Set omega) -- filtration indexed by ℝ≥0
  P : Set omega → ℝ -- probability measure
  filtrationComplete : Prop
  rightContinuous : Prop

structure StochasticBasisEvidence (Ω : StochasticBasis) where
  filtrationCompleteClosed : Ω.filtrationComplete
  rightContinuousClosed : Ω.rightContinuous

def StochasticBasisClosed (Ω : StochasticBasis) : Prop :=
  Ω.filtrationComplete ∧ Ω.rightContinuous

theorem stochastic_basis_closed_from_evidence (Ω : StochasticBasis) (E : StochasticBasisEvidence Ω) :
    StochasticBasisClosed Ω := by
  exact And.intro E.filtrationCompleteClosed E.rightContinuousClosed

end MartingalesContinuousParameterFoundationCanonicalLaneLean
end HautevilleHouse