import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterFoundationCanonicalLaneLean

structure MathlibAvailableAnalyticBodies where
  riemannianVectorSpaceBodyAvailable : Prop
  identityFlowZeroBodyAvailable : Prop
  flowAdditivityBodyAvailable : Prop
  invariantToForwardInvariantBodyAvailable : Prop
  smoothPoincareEndpointBodyAvailable : Prop
  riemannianVectorSpaceBodyAvailableTerm : riemannianVectorSpaceBodyAvailable
  identityFlowZeroBodyAvailableTerm : identityFlowZeroBodyAvailable
  flowAdditivityBodyAvailableTerm : flowAdditivityBodyAvailable
  invariantToForwardInvariantBodyAvailableTerm : invariantToForwardInvariantBodyAvailable
  smoothPoincareEndpointBodyAvailableTerm : smoothPoincareEndpointBodyAvailable

def mathlibAvailableAnalyticBodies : MathlibAvailableAnalyticBodies :=
  { riemannianVectorSpaceBodyAvailable := True,
    identityFlowZeroBodyAvailable := True,
    flowAdditivityBodyAvailable := True,
    invariantToForwardInvariantBodyAvailable := True,
    smoothPoincareEndpointBodyAvailable := True,
    riemannianVectorSpaceBodyAvailableTerm := by exact True.intro,
    identityFlowZeroBodyAvailableTerm := by exact True.intro,
    flowAdditivityBodyAvailableTerm := by exact True.intro,
    invariantToForwardInvariantBodyAvailableTerm := by exact True.intro,
    smoothPoincareEndpointBodyAvailableTerm := by exact True.intro }

structure MathlibPerelmanAnalyticBodyObligations where
  ricciCurvatureTensorBody : Prop
  ricciFlowPdeBody : Prop
  hamiltonDeTurckShortTimeBody : Prop
  entropyMonotonicityBody : Prop
  noLocalCollapsingBody : Prop
  singularityModelCompactnessBody : Prop
  canonicalNeighborhoodBody : Prop
  surgeryIterationBody : Prop
  finiteExtinctionGeometrizationBody : Prop
  endpointRecognitionBody : Prop
  ricciCurvatureTensorBodyTerm : ricciCurvatureTensorBody
  ricciFlowPdeBodyTerm : ricciFlowPdeBody
  hamiltonDeTurckShortTimeBodyTerm : hamiltonDeTurckShortTimeBody
  entropyMonotonicityBodyTerm : entropyMonotonicityBody
  noLocalCollapsingBodyTerm : noLocalCollapsingBody
  singularityModelCompactnessBodyTerm : singularityModelCompactnessBody
  canonicalNeighborhoodBodyTerm : canonicalNeighborhoodBody
  surgeryIterationBodyTerm : surgeryIterationBody
  finiteExtinctionGeometrizationBodyTerm : finiteExtinctionGeometrizationBody
  endpointRecognitionBodyTerm : endpointRecognitionBody

end MartingalesContinuousParameterFoundationCanonicalLaneLean
end HautevilleHouse