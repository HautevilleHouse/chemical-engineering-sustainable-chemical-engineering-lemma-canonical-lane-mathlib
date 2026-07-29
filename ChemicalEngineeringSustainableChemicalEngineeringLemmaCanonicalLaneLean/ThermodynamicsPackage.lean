import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean

structure ThermodynamicsPackage where
  temperature : Type u
  pressure : Type v
  volume : Type w
  internalEnergy : Type x
  entropy : Type y
  gibbsFreeEnergy : Type z
  firstLawSatisfied : Prop
  secondLawSatisfied : Prop
  equilibriumCondition : Prop
  firstLawTerm : firstLawSatisfied
  secondLawTerm : secondLawSatisfied
  equilibriumConditionTerm : equilibriumCondition

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  firstLawClosed : T.firstLawSatisfied
  secondLawClosed : T.secondLawSatisfied
  equilibriumConditionClosed : T.equilibriumCondition

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.firstLawSatisfied ∧ T.secondLawSatisfied ∧ T.equilibriumCondition

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) :
    ThermodynamicsClosed T := by
  exact And.intro E.firstLawClosed (And.intro E.secondLawClosed E.equilibriumConditionClosed)

end ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse