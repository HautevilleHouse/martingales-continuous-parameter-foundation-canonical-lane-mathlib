import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterFoundationCanonicalLaneLean

structure DoobInequalitiesPackage where
  maximalInequality : Prop
  quadraticVariationInequality : Prop

def DoobInequalitiesClosed (D : DoobInequalitiesPackage) : Prop :=
  D.maximalInequality ∧ D.quadraticVariationInequality

theorem doob_inequalities_closed (D : DoobInequalitiesPackage)
    (h1 : D.maximalInequality) (h2 : D.quadraticVariationInequality) :
    DoobInequalitiesClosed D := by
  exact And.intro h1 h2

end MartingalesContinuousParameterFoundationCanonicalLaneLean
end HautevilleHouse