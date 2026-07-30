import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterFoundationCanonicalLaneLean

structure OptionalStopping (Ω : StochasticBasis) where
  M : Martingale Ω
  stoppingTimes : Set (ℝ → Ω → ℝ) -- class of stopping times
  optionalStoppingTheorem : Prop

structure OptionalStoppingEvidence {Ω : StochasticBasis} (O : OptionalStopping Ω) where
  optionalStoppingTheoremClosed : O.optionalStoppingTheorem

def OptionalStoppingClosed {Ω : StochasticBasis} (O : OptionalStopping Ω) : Prop :=
  O.optionalStoppingTheorem

theorem optional_stopping_closed_from_evidence {Ω : StochasticBasis} (O : OptionalStopping Ω) (E : OptionalStoppingEvidence O) :
    OptionalStoppingClosed O := by
  exact E.optionalStoppingTheoremClosed

end MartingalesContinuousParameterFoundationCanonicalLaneLean
end HautevilleHouse