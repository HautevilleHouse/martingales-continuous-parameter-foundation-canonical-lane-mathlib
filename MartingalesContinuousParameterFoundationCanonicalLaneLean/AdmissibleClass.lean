import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : MartingaleAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MartingaleWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MartingalesContinuousParameterFoundationCanonicalLaneLean
end HautevilleHouse
