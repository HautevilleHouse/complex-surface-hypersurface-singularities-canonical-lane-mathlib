import ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean.ShortTimeExistence

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

structure AlexanderPolynomialPackage where
  polynomial : ℤ[X]
  degree : ℕ
  roots : List ℂ

structure AlexanderPolynomialEvidence (A : AlexanderPolynomialPackage) where
  degreeClosed : A.degree = 1

def AlexanderPolynomialClosed (A : AlexanderPolynomialPackage) : Prop :=
  A.degree = 1

theorem alexander_polynomial_closed_from_evidence (A : AlexanderPolynomialPackage) (E : AlexanderPolynomialEvidence A) : AlexanderPolynomialClosed A := by
  exact E.degreeClosed

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse