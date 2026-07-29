import ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HypersurfaceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse