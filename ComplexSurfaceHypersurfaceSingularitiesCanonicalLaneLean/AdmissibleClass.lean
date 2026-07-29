import ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

structure HypersurfaceAdmittedObject where
  space : ComplexSurface
  hypersurface : ComplexSurface.Hypersurface
  singularity : space.Point
  analyticType : String
  conclusion : Prop

structure AdmissibleClass where
  object : HypersurfaceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def HypersurfaceWitnessClosed (O : HypersurfaceAdmittedObject) : Prop :=
  O.conclusion

def admittedClosure (A : AdmissibleClass) : Prop :=
  HypersurfaceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse