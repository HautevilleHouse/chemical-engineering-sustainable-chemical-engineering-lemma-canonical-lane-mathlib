import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  equilibriumConstant : Type u
  reactionQuotient : Type v
  gibbsFreeEnergyChange : Prop
  leChatelierPrinciple : Prop
  equilibriumComposition : Prop

structure ChemicalEquilibriumEvidence (C : ChemicalEquilibriumPackage) where
  gibbsFreeEnergyChangeClosed : C.gibbsFreeEnergyChange
  leChatelierPrincipleClosed : C.leChatelierPrinciple
  equilibriumCompositionClosed : C.equilibriumComposition

def ChemicalEquilibriumClosed (C : ChemicalEquilibriumPackage) : Prop :=
  C.gibbsFreeEnergyChange ∧ C.leChatelierPrinciple ∧ C.equilibriumComposition

theorem chemical_equilibrium_closed_from_evidence (C : ChemicalEquilibriumPackage) (E : ChemicalEquilibriumEvidence C) : ChemicalEquilibriumClosed C := by
  exact And.intro E.gibbsFreeEnergyChangeClosed (And.intro E.leChatelierPrincipleClosed E.equilibriumCompositionClosed)

end ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse