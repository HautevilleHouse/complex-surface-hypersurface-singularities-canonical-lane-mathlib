import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

structure MilnorFibrationPackage (H : HypersurfaceSingularityModel) where
  milnorRadius : ℝ
  fibrationMap : {x : H.ambientSpace // ‖x‖ < milnorRadius ∧ x ≠ H.isolatedSingularityPoint} → 𝕊¹
  fiberHomotopyEquivalentToMilnorFiber : Prop
  geometricMonodromyDefined : Prop

structure MilnorFibrationEvidence {H : HypersurfaceSingularityModel} (M : MilnorFibrationPackage H) where
  fiberHomotopyEquivalentToMilnorFiberClosed : M.fiberHomotopyEquivalentToMilnorFiber
  geometricMonodromyDefinedClosed : M.geometricMonodromyDefined

def MilnorFibrationClosed {H : HypersurfaceSingularityModel} (M : MilnorFibrationPackage H) : Prop :=
  M.fiberHomotopyEquivalentToMilnorFiber ∧ M.geometricMonodromyDefined

theorem milnor_fibration_closed_from_evidence
    {H : HypersurfaceSingularityModel} (M : MilnorFibrationPackage H) (E : MilnorFibrationEvidence M) :
    MilnorFibrationClosed M := by
  exact And.intro E.fiberHomotopyEquivalentToMilnorFiberClosed E.geometricMonodromyDefinedClosed

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse