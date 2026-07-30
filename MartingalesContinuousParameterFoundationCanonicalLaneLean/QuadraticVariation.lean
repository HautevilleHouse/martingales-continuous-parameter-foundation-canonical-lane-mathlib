import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterFoundationCanonicalLaneLean

structure QuadraticVariation (Ω : StochasticBasis) where
  M : Martingale Ω
  process : ℝ → Ω → ℝ
  exists : Prop
  continuity : Prop

structure QuadraticVariationEvidence {Ω : StochasticBasis} (Q : QuadraticVariation Ω) where
  existsClosed : Q.exists
  continuityClosed : Q.continuity

def QuadraticVariationClosed {Ω : StochasticBasis} (Q : QuadraticVariation Ω) : Prop :=
  Q.exists ∧ Q.continuity

theorem quadratic_variation_closed_from_evidence {Ω : StochasticBasis} (Q : QuadraticVariation Ω) (E : QuadraticVariationEvidence Q) :
    QuadraticVariationClosed Q := by
  exact And.intro E.existsClosed E.continuityClosed

end MartingalesContinuousParameterFoundationCanonicalLaneLean
end HautevilleHouse