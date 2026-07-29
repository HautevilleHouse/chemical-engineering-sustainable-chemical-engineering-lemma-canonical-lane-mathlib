import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean

structure ReactorKineticsPackage where
  reactionRates : Type u
  rateConstants : Type v
  massBalanceEquations : Prop
  reactionMechanism : Prop
  temperatureDependence : Prop
  steadyStateAssumption : Prop

structure ReactorKineticsEvidence (R : ReactorKineticsPackage) where
  massBalanceEquationsClosed : R.massBalanceEquations
  reactionMechanismClosed : R.reactionMechanism
  temperatureDependenceClosed : R.temperatureDependence
  steadyStateAssumptionClosed : R.steadyStateAssumption

def ReactorKineticsClosed (R : ReactorKineticsPackage) : Prop :=
  R.massBalanceEquations ∧ R.reactionMechanism ∧ R.temperatureDependence ∧ R.steadyStateAssumption

theorem reactor_kinetics_closed_from_evidence (R : ReactorKineticsPackage) (E : ReactorKineticsEvidence R) : ReactorKineticsClosed R := by
  exact And.intro E.massBalanceEquationsClosed (And.intro E.reactionMechanismClosed (And.intro E.temperatureDependenceClosed E.steadyStateAssumptionClosed))

end ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse