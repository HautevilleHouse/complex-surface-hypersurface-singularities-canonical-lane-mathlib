import ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse