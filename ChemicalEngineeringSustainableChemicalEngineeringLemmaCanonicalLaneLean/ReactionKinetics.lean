import ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean.MathlibObjects

/-!
# Reaction Kinetics Package
-/

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLawExpressions : Prop
  equilibriumConstant : Prop
  activationEnergy : Prop
  temperatureDependence : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateLawExpressionsClosed : R.rateLawExpressions
  equilibriumConstantClosed : R.equilibriumConstant
  activationEnergyClosed : R.activationEnergy
  temperatureDependenceClosed : R.temperatureDependence

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateLawExpressions ∧ R.equilibriumConstant ∧ R.activationEnergy ∧ R.temperatureDependence

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage)
    (E : ReactionKineticsEvidence R) : ReactionKineticsClosed R := by
  exact And.intro E.rateLawExpressionsClosed
    (And.intro E.equilibriumConstantClosed
      (And.intro E.activationEnergyClosed E.temperatureDependenceClosed))

end ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse