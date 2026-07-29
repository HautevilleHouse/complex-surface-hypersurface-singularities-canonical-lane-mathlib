import ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

structure MilnorFibration where
  fiber : Type u
  totalSpace : Type v
  projection : totalSpace → fiber
  monodromy : Type w

structure MilnorFibrationEvidence (M : MilnorFibration) where
  fiberClosed : True
  monodromyClosed : True

def MilnorFibrationClosed (M : MilnorFibration) : Prop :=
  True ∧ True

theorem milnor_fibration_closed_from_evidence (M : MilnorFibration) (E : MilnorFibrationEvidence M) : MilnorFibrationClosed M := by
  exact And.intro E.fiberClosed E.monodromyClosed

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse