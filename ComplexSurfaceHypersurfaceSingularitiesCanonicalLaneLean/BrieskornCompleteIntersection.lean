import canonicalLaneMathlib.AdmissibleClass
import ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean.ComplexSurfaceHypersurface

/-!
# Brieskorn Complete Intersection Package
-/

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

structure BrieskornCompleteIntersection where
  exponents : List ℕ
  polynomial : Type u
  singularities : Type v
  sphereHomotopySphere : Prop
  exoticSphereBoundary : Prop

structure BrieskornCompleteIntersectionEvidence (B : BrieskornCompleteIntersection) where
  sphereHomotopySphereClosed : B.sphereHomotopySphere
  exoticSphereBoundaryClosed : B.exoticSphereBoundary
  singularitiesDefined : Nonempty B.singularities

def BrieskornCompleteIntersectionClosed (B : BrieskornCompleteIntersection) : Prop :=
  B.sphereHomotopySphere ∧ B.exoticSphereBoundary ∧ Nonempty B.singularities

theorem brieskorn_complete_intersection_closed_from_evidence
    (B : BrieskornCompleteIntersection) (E : BrieskornCompleteIntersectionEvidence B) :
    BrieskornCompleteIntersectionClosed B := by
  exact And.intro E.sphereHomotopySphereClosed
    (And.intro E.exoticSphereBoundaryClosed E.singularitiesDefined)

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse
