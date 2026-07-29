import ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean.MilnorFibration

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

structure SmoothingPackage where
  smoothingFamily : Type
  specialFiber : Type
  generalFiber : Type
  milnorFiberDiffeo : Prop
  smoothingExists : Prop
  smoothingExistsTerm : smoothingExists

def smoothingClosed (S : SmoothingPackage) : Prop :=
  S.milnorFiberDiffeo ∧ S.smoothingExists

theorem smoothing_closed (S : SmoothingPackage) (hmilnor : S.milnorFiberDiffeo) :
    smoothingClosed S := by
  exact And.intro hmilnor S.smoothingExistsTerm

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse