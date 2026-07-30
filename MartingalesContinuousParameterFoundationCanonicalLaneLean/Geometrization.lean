import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterFoundationCanonicalLaneLean

structure GeometrizationPackage where
  finiteExtinctionAlternative : Prop
  thickThinDecomposition : Prop
  geometrizedPiecesClassified : Prop
  simplyConnectedCaseForcesSpherePiece : Prop

structure GeometrizationEvidence (Z : GeometrizationPackage) where
  finiteExtinctionAlternativeClosed : Z.finiteExtinctionAlternative
  thickThinDecompositionClosed : Z.thickThinDecomposition
  geometrizedPiecesClassifiedClosed : Z.geometrizedPiecesClassified
  simplyConnectedCaseForcesSpherePieceClosed : Z.simplyConnectedCaseForcesSpherePiece

def GeometrizationClosed (Z : GeometrizationPackage) : Prop :=
  Z.finiteExtinctionAlternative ∧ Z.thickThinDecomposition ∧
  Z.geometrizedPiecesClassified ∧ Z.simplyConnectedCaseForcesSpherePiece

theorem geometrization_closed_from_evidence
    (Z : GeometrizationPackage) (E : GeometrizationEvidence Z) :
    GeometrizationClosed Z := by
  exact And.intro E.finiteExtinctionAlternativeClosed
    (And.intro E.thickThinDecompositionClosed
      (And.intro E.geometrizedPiecesClassifiedClosed
        E.simplyConnectedCaseForcesSpherePieceClosed))

end MartingalesContinuousParameterFoundationCanonicalLaneLean
end HautevilleHouse