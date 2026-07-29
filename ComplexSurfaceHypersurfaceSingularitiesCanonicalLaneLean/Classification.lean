import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

structure ClassificationPackage where
  simpleSingularitiesClassified : Prop
  adeClassificationApplied : Prop
  unimodalAndBimodalClassified : Prop
  boundarySingularities : Prop

structure ClassificationEvidence (C : ClassificationPackage) where
  simpleSingularitiesClassifiedClosed : C.simpleSingularitiesClassified
  adeClassificationAppliedClosed : C.adeClassificationApplied
  unimodalAndBimodalClassifiedClosed : C.unimodalAndBimodalClassified
  boundarySingularitiesClosed : C.boundarySingularities

def ClassificationClosed (C : ClassificationPackage) : Prop :=
  C.simpleSingularitiesClassified ∧ C.adeClassificationApplied ∧
  C.unimodalAndBimodalClassified ∧ C.boundarySingularities

theorem classification_closed_from_evidence (C : ClassificationPackage) (E : ClassificationEvidence C) :
    ClassificationClosed C := by
  exact And.intro E.simpleSingularitiesClassifiedClosed
    (And.intro E.adeClassificationAppliedClosed
      (And.intro E.unimodalAndBimodalClassifiedClosed E.boundarySingularitiesClosed))

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse