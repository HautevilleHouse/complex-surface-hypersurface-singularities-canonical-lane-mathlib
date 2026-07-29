import ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure HypersurfaceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure HypersurfaceAdmittedObject where
  space : HypersurfaceSpace
  isolatedSingularity : Prop
  milnorNumberFinite : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure HypersurfaceEndgameState where
  object : HypersurfaceAdmittedObject

def HypersurfaceWitnessClosed (O : HypersurfaceAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end ComplexSurfaceHypersurfaceSingularitiesCanonicalLaneLean
end HautevilleHouse