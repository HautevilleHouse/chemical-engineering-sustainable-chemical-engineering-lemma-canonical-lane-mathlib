import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean

structure ThermodynamicsPhaseEquilibriumPackage where
  gibbsFreeEnergy : Type u
  chemicalPotential : Type v
  phaseEquilibriumCondition : Prop
  activityCoefficients : Prop
  excessEnthalpy : Prop

structure ThermodynamicsPhaseEquilibriumEvidence (T : ThermodynamicsPhaseEquilibriumPackage) where
  phaseEquilibriumConditionClosed : T.phaseEquilibriumCondition
  activityCoefficientsClosed : T.activityCoefficients
  excessEnthalpyClosed : T.excessEnthalpy

def ThermodynamicsPhaseEquilibriumClosed (T : ThermodynamicsPhaseEquilibriumPackage) : Prop :=
  T.phaseEquilibriumCondition ∧ T.activityCoefficients ∧ T.excessEnthalpy

theorem thermodynamics_phase_equilibrium_closed_from_evidence (T : ThermodynamicsPhaseEquilibriumPackage) (E : ThermodynamicsPhaseEquilibriumEvidence T) : ThermodynamicsPhaseEquilibriumClosed T := by
  exact And.intro E.phaseEquilibriumConditionClosed (And.intro E.activityCoefficientsClosed E.excessEnthalpyClosed)

end ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse