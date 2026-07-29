import canonicalLaneMathlib.AdmissibleClass
import ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean.HodgeTheoryForSingularities

/-!
# Monodromy Conjecture Package
-/

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

structure MonodromyConjecture {H : ComplexSurfaceHypersurface}
    {R : ResolutionOfSingularities H} {HT : HodgeTheoryForSingularities H R} where
  zetaFunctionRelation : Prop
  eigenvaluesFromHodge : Prop
  monodromyOperator : Type u
  jordanBlocks : Type v

structure MonodromyConjectureEvidence {H : ComplexSurfaceHypersurface}
    {R : ResolutionOfSingularities H} {HT : HodgeTheoryForSingularities H R}
    (MC : MonodromyConjecture H R HT) where
  zetaFunctionRelationClosed : MC.zetaFunctionRelation
  eigenvaluesFromHodgeClosed : MC.eigenvaluesFromHodge
  monodromyOperatorDefined : Nonempty MC.monodromyOperator

def MonodromyConjectureClosed {H : ComplexSurfaceHypersurface}
    {R : ResolutionOfSingularities H} {HT : HodgeTheoryForSingularities H R}
    (MC : MonodromyConjecture H R HT) : Prop :=
  MC.zetaFunctionRelation ∧ MC.eigenvaluesFromHodge ∧ Nonempty MC.monodromyOperator

theorem monodromy_conjecture_closed_from_evidence
    {H : ComplexSurfaceHypersurface} {R : ResolutionOfSingularities H}
    {HT : HodgeTheoryForSingularities H R} (MC : MonodromyConjecture H R HT)
    (E : MonodromyConjectureEvidence MC) : MonodromyConjectureClosed MC := by
  exact And.intro E.zetaFunctionRelationClosed
    (And.intro E.eigenvaluesFromHodgeClosed E.monodromyOperatorDefined)

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse
