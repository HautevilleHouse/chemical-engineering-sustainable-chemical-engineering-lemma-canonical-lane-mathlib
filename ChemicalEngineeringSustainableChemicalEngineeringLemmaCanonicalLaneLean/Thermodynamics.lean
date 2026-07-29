import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean

structure ThermodynamicPackage where
  temperature : Type u
  pressure : Type v
  gibbsFreeEnergy : Prop
  enthalpy : Prop
  entropy : Prop
  equilibriumCondition : Prop

structure ThermodynamicEvidence (T : ThermodynamicPackage) where
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  enthalpyClosed : T.enthalpy
  entropyClosed : T.entropy
  equilibriumConditionClosed : T.equilibriumCondition

def ThermodynamicClosed (T : ThermodynamicPackage) : Prop :=
  T.gibbsFreeEnergy ∧ T.enthalpy ∧ T.entropy ∧ T.equilibriumCondition

theorem thermodynamic_closed_from_evidence (T : ThermodynamicPackage) (E : ThermodynamicEvidence T) : ThermodynamicClosed T := by
  exact And.intro E.gibbsFreeEnergyClosed (And.intro E.enthalpyClosed (And.intro E.entropyClosed E.equilibriumConditionClosed))

end ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse