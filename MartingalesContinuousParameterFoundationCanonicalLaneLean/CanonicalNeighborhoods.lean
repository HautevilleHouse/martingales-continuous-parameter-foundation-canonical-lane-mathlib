import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterFoundationCanonicalLaneLean

structure CanonicalNeighborhoodsPackage where
  highCurvatureRegionCovered : Prop
  neckCapDecomposition : Prop
  scaleCompatibility : Prop
  persistenceUnderFlow : Prop

structure CanonicalNeighborhoodsEvidence (C : CanonicalNeighborhoodsPackage) where
  highCurvatureRegionCoveredClosed : C.highCurvatureRegionCovered
  neckCapDecompositionClosed : C.neckCapDecomposition
  scaleCompatibilityClosed : C.scaleCompatibility
  persistenceUnderFlowClosed : C.persistenceUnderFlow

def CanonicalNeighborhoodsClosed (C : CanonicalNeighborhoodsPackage) : Prop :=
  C.highCurvatureRegionCovered ∧ C.neckCapDecomposition ∧
  C.scaleCompatibility ∧ C.persistenceUnderFlow

theorem canonical_neighborhoods_closed_from_evidence
    (C : CanonicalNeighborhoodsPackage) (E : CanonicalNeighborhoodsEvidence C) :
    CanonicalNeighborhoodsClosed C := by
  exact And.intro E.highCurvatureRegionCoveredClosed
    (And.intro E.neckCapDecompositionClosed
      (And.intro E.scaleCompatibilityClosed E.persistenceUnderFlowClosed))

end MartingalesContinuousParameterFoundationCanonicalLaneLean
end HautevilleHouse