import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

structure MonodromyPackage where
  monodromyRepresentation : Type
  characteristicPolynomial : Prop
  monodromyTheoremProved : Prop
  canonicalNilpotentPart : Prop
  nikulinStructures : Prop

structure MonodromyEvidence (M : MonodromyPackage) where
  monodromyTheoremProvedClosed : M.monodromyTheoremProved
  canonicalNilpotentPartClosed : M.canonicalNilpotentPart
  nikulinStructuresClosed : M.nikulinStructures

def MonodromyClosed (M : MonodromyPackage) : Prop :=
  M.monodromyTheoremProved ∧ M.canonicalNilpotentPart ∧ M.nikulinStructures

theorem monodromy_closed_from_evidence (M : MonodromyPackage) (E : MonodromyEvidence M) :
    MonodromyClosed M := by
  exact And.intro E.monodromyTheoremProvedClosed
    (And.intro E.canonicalNilpotentPartClosed E.nikulinStructuresClosed)

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse