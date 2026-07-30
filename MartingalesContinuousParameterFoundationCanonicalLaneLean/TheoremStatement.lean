import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterFoundationCanonicalLaneLean

structure MartingaleAdmittedObject where
  space : Type u
  sigmaAlgebra : Set (Set (space))
  filtration : Type v
  adaptedProcess : Type w
  conclusion : Prop

def MartingaleWitnessClosed (O : MartingaleAdmittedObject) : Prop :=
  O.conclusion

end MartingalesContinuousParameterFoundationCanonicalLaneLean
end HautevilleHouse
