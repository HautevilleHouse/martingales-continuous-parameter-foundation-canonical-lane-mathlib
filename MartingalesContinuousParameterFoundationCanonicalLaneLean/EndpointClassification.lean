import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterFoundationCanonicalLaneLean

structure EndpointClassificationPackage where
  targetManifold : Type u
  targetTopology : TopologicalSpace targetManifold
  simplyConnectedClosedThreeManifold : Prop
  sphereEndpoint : Prop
  endpointMatchesPoincareStatement : Prop

structure EndpointClassificationEvidence (Epkg : EndpointClassificationPackage) where
  simplyConnectedClosedThreeManifoldClosed : Epkg.simplyConnectedClosedThreeManifold
  endpointMatchesPoincareStatementClosed : Epkg.endpointMatchesPoincareStatement

def EndpointClassificationClosed (Epkg : EndpointClassificationPackage) : Prop :=
  Epkg.simplyConnectedClosedThreeManifold ∧
  Epkg.endpointMatchesPoincareStatement

theorem endpoint_classification_closed_from_evidence
    (Epkg : EndpointClassificationPackage) (E : EndpointClassificationEvidence Epkg) :
    EndpointClassificationClosed Epkg := by
  exact And.intro E.simplyConnectedClosedThreeManifoldClosed
    E.endpointMatchesPoincareStatementClosed

end MartingalesContinuousParameterFoundationCanonicalLaneLean
end HautevilleHouse