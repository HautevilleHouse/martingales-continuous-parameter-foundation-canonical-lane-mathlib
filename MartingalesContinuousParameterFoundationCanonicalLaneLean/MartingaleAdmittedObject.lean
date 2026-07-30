import canonicalLaneMathlib.MartingaleAdmittedObject

namespace HautevilleHouse
namespace MartingalesContinuousParameterFoundationCanonicalLaneLean

structure MartingaleSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MartingaleAdmittedObject where
  space : MartingaleSpace
  filtration : Prop
  adaptedProcess : Prop
  integrable : Prop
  martingaleProperty : Prop
  conclusion : martingaleProperty

def MartingaleWitnessClosed (O : MartingaleAdmittedObject) : Prop :=
  O.martingaleProperty

end MartingalesContinuousParameterFoundationCanonicalLaneLean
end HautevilleHouse
