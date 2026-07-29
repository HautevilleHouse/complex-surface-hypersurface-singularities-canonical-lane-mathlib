import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

structure BrieskornPhamPackage where
  brieskornPhamPolynomial : String
  milnorFiberHomotopy : Prop
  milnorFiber : Type u
  milnorFiberSpace : TopologicalSpace milnorFiber
  milnorFiberEquiv : Prop
  monodromyOperator : Prop
  spectrum : List (Nat × Nat)

structure BrieskornPhamEvidence (B : BrieskornPhamPackage) where
  milnorFiberHomotopyClosed : B.milnorFiberHomotopy
  milnorFiberEquivClosed : B.milnorFiberEquiv
  monodromyOperatorClosed : B.monodromyOperator
  spectrumComputed : B.spectrum ≠ []

def BrieskornPhamClosed (B : BrieskornPhamPackage) : Prop :=
  B.milnorFiberHomotopy ∧ B.milnorFiberEquiv ∧ B.monodromyOperator ∧ B.spectrum ≠ []

theorem brieskorn_pham_closed_from_evidence (B : BrieskornPhamPackage) (E : BrieskornPhamEvidence B) : BrieskornPhamClosed B := by
  exact And.intro E.milnorFiberHomotopyClosed (And.intro E.milnorFiberEquivClosed (And.intro E.monodromyOperatorClosed E.spectrumComputed))

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse