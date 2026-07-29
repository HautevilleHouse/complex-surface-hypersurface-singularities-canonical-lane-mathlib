import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

structure DeformationPackage (H : HypersurfaceSingularityModel) where
  deformationParameterSpace : Type u
  familyOfFunctions : deformationParameterSpace → (H.ambientSpace → ℂ)
  centralFiberMatches : familyOfFunctions 0 = H.definingFunction
  genericFiberSmooth : Prop
  monodromyRepresentation : Type v

structure DeformationEvidence {H : HypersurfaceSingularityModel} (D : DeformationPackage H) where
  centralFiberMatchesClosed : D.centralFiberMatches
  genericFiberSmoothClosed : D.genericFiberSmooth

def DeformationClosed {H : HypersurfaceSingularityModel} (D : DeformationPackage H) : Prop :=
  D.centralFiberMatches ∧ D.genericFiberSmooth

theorem deformation_closed_from_evidence
    {H : HypersurfaceSingularityModel} (D : DeformationPackage H) (E : DeformationEvidence D) :
    DeformationClosed D := by
  exact And.intro E.centralFiberMatchesClosed E.genericFiberSmoothClosed

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse