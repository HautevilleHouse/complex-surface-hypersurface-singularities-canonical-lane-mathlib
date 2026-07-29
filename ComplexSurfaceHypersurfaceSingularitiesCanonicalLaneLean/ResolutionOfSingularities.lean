import canonicalLaneMathlib.AdmissibleClass
import ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean.ComplexSurfaceHypersurface

/-!
# Resolution of Singularities Package
-/

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

structure ResolutionOfSingularities {H : ComplexSurfaceHypersurface} where
  resolutionSpace : Type u
  resolutionMap : Type v
  exceptionalDivisor : Type w
  normalCrossings : Prop
  strictTransform : Type x

structure ResolutionOfSingularitiesEvidence {H : ComplexSurfaceHypersurface}
    (R : ResolutionOfSingularities H) where
  normalCrossingsClosed : R.normalCrossings
  resolutionMapProper : Prop
  exceptionalDivisorDefined : Nonempty R.exceptionalDivisor

def ResolutionOfSingularitiesClosed {H : ComplexSurfaceHypersurface}
    (R : ResolutionOfSingularities H) : Prop :=
  R.normalCrossings ∧ R.resolutionMapProper ∧ Nonempty R.exceptionalDivisor

theorem resolution_of_singularities_closed_from_evidence
    {H : ComplexSurfaceHypersurface} (R : ResolutionOfSingularities H)
    (E : ResolutionOfSingularitiesEvidence R) : ResolutionOfSingularitiesClosed R := by
  exact And.intro E.normalCrossingsClosed
    (And.intro E.resolutionMapProper E.exceptionalDivisorDefined)

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse
