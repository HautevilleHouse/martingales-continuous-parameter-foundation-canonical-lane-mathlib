import canonicalLaneMathlib.ContinuousParameterMartingale

namespace HautevilleHouse
namespace MartingalesContinuousParameterFoundationCanonicalLaneLean

structure ContinuousParameterMartingalePackage where
  timeDomain : Type u
  filtrationTopology : TopologicalSpace timeDomain
  cadlagPaths : Prop
  quadraticVariation : Prop
  optionalStoppingTheorem : Prop
  martingaleRepresentation : Prop

structure ContinuousParameterMartingaleEvidence (C : ContinuousParameterMartingalePackage) where
  cadlagPathsClosed : C.cadlagPaths
  quadraticVariationClosed : C.quadraticVariation
  optionalStoppingTheoremClosed : C.optionalStoppingTheorem
  martingaleRepresentationClosed : C.martingaleRepresentation

def ContinuousParameterMartingaleClosed (C : ContinuousParameterMartingalePackage) : Prop :=
  C.cadlagPaths ∧ C.quadraticVariation ∧ C.optionalStoppingTheorem ∧ C.martingaleRepresentation

theorem continuous_parameter_martingale_closed_from_evidence
    (C : ContinuousParameterMartingalePackage) (E : ContinuousParameterMartingaleEvidence C) :
    ContinuousParameterMartingaleClosed C := by
  exact And.intro E.cadlagPathsClosed
    (And.intro E.quadraticVariationClosed
      (And.intro E.optionalStoppingTheoremClosed E.martingaleRepresentationClosed))

end MartingalesContinuousParameterFoundationCanonicalLaneLean
end HautevilleHouse
