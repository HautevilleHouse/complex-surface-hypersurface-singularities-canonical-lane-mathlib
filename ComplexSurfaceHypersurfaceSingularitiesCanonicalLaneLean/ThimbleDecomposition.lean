import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

structure ThimbleDecompositionPackage where
  lefschetzThimbles : Type u
  vanishingCycleBasis : Prop
  intersectionForm : Prop
  picardLefschetzFormula : Prop

structure ThimbleDecompositionEvidence (T : ThimbleDecompositionPackage) where
  vanishingCycleBasisClosed : T.vanishingCycleBasis
  intersectionFormClosed : T.intersectionForm
  picardLefschetzFormulaClosed : T.picardLefschetzFormula

def ThimbleDecompositionClosed (T : ThimbleDecompositionPackage) : Prop :=
  T.vanishingCycleBasis ∧ T.intersectionForm ∧ T.picardLefschetzFormula

theorem thimble_decomposition_closed_from_evidence (T : ThimbleDecompositionPackage) (E : ThimbleDecompositionEvidence T) : ThimbleDecompositionClosed T := by
  exact And.intro E.vanishingCycleBasisClosed (And.intro E.intersectionFormClosed E.picardLefschetzFormulaClosed)

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse