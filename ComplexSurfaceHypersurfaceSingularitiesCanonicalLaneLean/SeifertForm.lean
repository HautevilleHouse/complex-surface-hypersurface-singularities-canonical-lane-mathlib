import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

structure SeifertFormPackage (H : HypersurfaceSingularityModel) where
  milnorFiberHomology : Type u
  intersectionForm : milnorFiberHomology → milnorFiberHomology → ℤ
  seifertForm : milnorFiberHomology → milnorFiberHomology → ℤ
  milnorLatticeBasis : List milnorFiberHomology
  seifertFormUnimodular : Prop

structure SeifertFormEvidence {H : HypersurfaceSingularityModel} (S : SeifertFormPackage H) where
  seifertFormUnimodularClosed : S.seifertFormUnimodular

def SeifertFormClosed {H : HypersurfaceSingularityModel} (S : SeifertFormPackage H) : Prop :=
  S.seifertFormUnimodular

theorem seifert_form_closed_from_evidence
    {H : HypersurfaceSingularityModel} (S : SeifertFormPackage H) (E : SeifertFormEvidence S) :
    SeifertFormClosed S := by
  exact E.seifertFormUnimodularClosed

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse