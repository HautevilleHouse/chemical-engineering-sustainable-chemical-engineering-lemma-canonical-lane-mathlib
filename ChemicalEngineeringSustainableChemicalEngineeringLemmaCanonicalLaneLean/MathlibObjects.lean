import ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ChemEngSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ChemEngAdmittedObject where
  process : ChemEngSpace
  sustainable : Prop
  efficient : Prop
  modelType : Type
  modelTopology : TopologicalSpace modelType
  modelCompatible : Prop
  conclusion : modelCompatible

structure ChemEngEndgameState where
  object : ChemEngAdmittedObject

def ChemEngWitnessClosed (O : ChemEngAdmittedObject) : Prop :=
  O.modelCompatible

end ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse