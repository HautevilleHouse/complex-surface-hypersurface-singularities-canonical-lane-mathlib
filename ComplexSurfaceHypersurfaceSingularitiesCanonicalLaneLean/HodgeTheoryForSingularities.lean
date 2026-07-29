import canonicalLaneMathlib.AdmissibleClass
import ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean.ResolutionOfSingularities

/-!
# Hodge Theory for Singularities Package
-/

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

structure HodgeTheoryForSingularities {H : ComplexSurfaceHypersurface}
    {R : ResolutionOfSingularities H} where
  mixedHodgeStructure : Type u
  hodgeNumbers : Type v
  spectralSequence : Type w
  weightFiltration : Prop
  hodgeFiltration : Prop

structure HodgeTheoryForSingularitiesEvidence {H : ComplexSurfaceHypersurface}
    {R : ResolutionOfSingularities H} (HT : HodgeTheoryForSingularities H R) where
  weightFiltrationClosed : HT.weightFiltration
  hodgeFiltrationClosed : HT.hodgeFiltration
  hodgeNumbersDefined : Nonempty HT.hodgeNumbers

def HodgeTheoryForSingularitiesClosed {H : ComplexSurfaceHypersurface}
    {R : ResolutionOfSingularities H} (HT : HodgeTheoryForSingularities H R) : Prop :=
  HT.weightFiltration ∧ HT.hodgeFiltration ∧ Nonempty HT.hodgeNumbers

theorem hodge_theory_for_singularities_closed_from_evidence
    {H : ComplexSurfaceHypersurface} {R : ResolutionOfSingularities H}
    (HT : HodgeTheoryForSingularities H R) (E : HodgeTheoryForSingularitiesEvidence HT) :
    HodgeTheoryForSingularitiesClosed HT := by
  exact And.intro E.weightFiltrationClosed
    (And.intro E.hodgeFiltrationClosed E.hodgeNumbersDefined)

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse
