import ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean.SingularityModels

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

structure SteinFactorizationPackage where
  resolution : Type u
  exceptionalDivisors : List (ℕ × ℕ)
  intersectionMatrix : ℤ

structure SteinFactorizationEvidence (S : SteinFactorizationPackage) where
  intersectionMatrixClosed : S.intersectionMatrix = 0

def SteinFactorizationClosed (S : SteinFactorizationPackage) : Prop :=
  S.intersectionMatrix = 0

theorem stein_factorization_closed_from_evidence (S : SteinFactorizationPackage) (E : SteinFactorizationEvidence S) : SteinFactorizationClosed S := by
  exact E.intersectionMatrixClosed

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse