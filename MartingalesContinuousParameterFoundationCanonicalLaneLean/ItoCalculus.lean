import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterFoundationCanonicalLaneLean

structure ItoCalculusPackage where
  itoIntegralDefined : Prop
  itoFormula : Prop
  stochasticExistence : Prop

def ItoCalculusClosed (I : ItoCalculusPackage) : Prop :=
  I.itoIntegralDefined ∧ I.itoFormula ∧ I.stochasticExistence

theorem ito_calculus_closed (I : ItoCalculusPackage)
    (h1 : I.itoIntegralDefined) (h2 : I.itoFormula) (h3 : I.stochasticExistence) :
    ItoCalculusClosed I := by
  exact And.intro h1 (And.intro h2 h3)

end MartingalesContinuousParameterFoundationCanonicalLaneLean
end HautevilleHouse