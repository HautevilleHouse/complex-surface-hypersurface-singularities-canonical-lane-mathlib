import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

structure HypersurfaceSingularityModel where
  ambientSpace : Type u
  ambientTopology : TopologicalSpace ambientSpace
  definingFunction : ambientSpace → ℂ
  isolatedSingularityPoint : ambientSpace
  milnorNumber : ℕ
  milnorFiber : Type v
  milnorFiberTopology : TopologicalSpace milnorFiber
  milnorFiberHomotopyType : Prop

structure HypersurfaceSingularityEvidence (H : HypersurfaceSingularityModel) where
  isolatedSingularityClosed : H.definingFunction H.isolatedSingularityPoint = 0
  milnorNumberFinite : H.milnorNumber > 0
  milnorFiberWellDefined : H.milnorFiberHomotopyType

def HypersurfaceSingularityClosed (H : HypersurfaceSingularityModel) : Prop :=
  H.definingFunction H.isolatedSingularityPoint = 0 ∧
  H.milnorNumber > 0 ∧
  H.milnorFiberHomotopyType

theorem hypersurface_singularity_closed_from_evidence
    (H : HypersurfaceSingularityModel) (E : HypersurfaceSingularityEvidence H) :
    HypersurfaceSingularityClosed H := by
  exact And.intro E.isolatedSingularityClosed
    (And.intro E.milnorNumberFinite E.milnorFiberWellDefined)

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse