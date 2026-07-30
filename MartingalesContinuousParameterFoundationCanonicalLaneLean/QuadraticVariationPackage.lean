import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterFoundation

structure QuadraticVariationPackage {Ω : Type u} [MeasurableSpace Ω] {F : FiltrationPackage Ω} (M : MartingaleProcessPackage F) where
  quadraticVariation : Ω → F.indexSet → ℝ
  adapted : ∀ t : F.indexSet, Measurable (quadraticVariation · t)
  continuity : Prop
  itoIsometry : Prop

structure QuadraticVariationEvidence {Ω : Type u} [MeasurableSpace Ω] {F : FiltrationPackage Ω} {M : MartingaleProcessPackage F} (Q : QuadraticVariationPackage M) where
  continuityClosed : Q.continuity
  itoIsometryClosed : Q.itoIsometry

def QuadraticVariationClosed {Ω : Type u} [MeasurableSpace Ω] {F : FiltrationPackage Ω} {M : MartingaleProcessPackage F} (Q : QuadraticVariationPackage M) : Prop :=
  Q.continuity ∧ Q.itoIsometry

theorem quadratic_variation_closed_from_evidence {Ω : Type u} [MeasurableSpace Ω] {F : FiltrationPackage Ω} {M : MartingaleProcessPackage F} (Q : QuadraticVariationPackage M) (E : QuadraticVariationEvidence Q) : QuadraticVariationClosed Q := by
  exact And.intro E.continuityClosed E.itoIsometryClosed

end MartingalesContinuousParameterFoundation
end HautevilleHouse