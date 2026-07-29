import canonicalLaneMathlib.AdmissibleClass

/-!
# Complex Surface Hypersurface Package
-/

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

structure ComplexSurfaceHypersurface where
  ambientSpace : Type u
  definingPolynomial : Type v
  dimension : Nat
  isolatedSingularity : Prop
  milnorNumber : Nat
  milnorFiber : Type w
  vanishingCycle : Type x

structure ComplexSurfaceHypersurfaceEvidence (H : ComplexSurfaceHypersurface) where
  isolatedSingularityClosed : H.isolatedSingularity
  milnorNumberFinite : H.milnorNumber > 0
  milnorFiberDefined : Nonempty H.milnorFiber

def ComplexSurfaceHypersurfaceClosed (H : ComplexSurfaceHypersurface) : Prop :=
  H.isolatedSingularity ∧ H.milnorNumber > 0 ∧ Nonempty H.milnorFiber

theorem complex_surface_hypersurface_closed_from_evidence
    (H : ComplexSurfaceHypersurface) (E : ComplexSurfaceHypersurfaceEvidence H) :
    ComplexSurfaceHypersurfaceClosed H := by
  exact And.intro E.isolatedSingularityClosed
    (And.intro E.milnorNumberFinite E.milnorFiberDefined)

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse
