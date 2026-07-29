import ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def hypersurfaceProjection : Projection HypersurfaceEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem hypersurface_projection_idempotent (x : HypersurfaceEndgameState) :
    hypersurfaceProjection.toFun (hypersurfaceProjection.toFun x) = hypersurfaceProjection.toFun x := by
  exact hypersurfaceProjection.idempotent x

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse