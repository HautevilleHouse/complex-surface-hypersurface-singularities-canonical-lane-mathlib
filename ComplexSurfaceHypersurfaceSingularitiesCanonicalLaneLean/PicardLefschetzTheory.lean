import canonicalLaneMathlib.AdmissibleClass
import ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean.MilnorFibration

/-!
# Picard-Lefschetz Theory Package
-/

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

structure PicardLefschetzTheory {H : ComplexSurfaceHypersurface}
    {M : MilnorFibration H} where
  vanishingCycleLattice : Type u
  picardLefschetzFormula : Prop
  monodromyRepresentation : Type v
  intersectionForm : Type w

structure PicardLefschetzTheoryEvidence {H : ComplexSurfaceHypersurface}
    {M : MilnorFibration H} (P : PicardLefschetzTheory H M) where
  picardLefschetzFormulaClosed : P.picardLefschetzFormula
  monodromyRepresentationDefined : Nonempty P.monodromyRepresentation
  intersectionFormDefined : Nonempty P.intersectionForm

def PicardLefschetzTheoryClosed {H : ComplexSurfaceHypersurface}
    {M : MilnorFibration H} (P : PicardLefschetzTheory H M) : Prop :=
  P.picardLefschetzFormula ∧ Nonempty P.monodromyRepresentation ∧ Nonempty P.intersectionForm

theorem picard_lefschetz_theory_closed_from_evidence
    {H : ComplexSurfaceHypersurface} {M : MilnorFibration H}
    (P : PicardLefschetzTheory H M) (E : PicardLefschetzTheoryEvidence P) :
    PicardLefschetzTheoryClosed P := by
  exact And.intro E.picardLefschetzFormulaClosed
    (And.intro E.monodromyRepresentationDefined E.intersectionFormDefined)

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse
