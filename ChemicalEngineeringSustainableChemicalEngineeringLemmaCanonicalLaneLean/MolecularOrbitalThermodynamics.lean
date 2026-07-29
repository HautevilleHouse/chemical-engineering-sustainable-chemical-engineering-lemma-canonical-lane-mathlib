import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean

structure MolecularOrbitalThermodynamicsPackage where
  molecularOrbitals : Prop
  thermodynamicPotentials : Prop
  orbitalEnergyLevels : Prop
  electronConfiguration : Prop

structure MolecularOrbitalThermodynamicsEvidence
    (M : MolecularOrbitalThermodynamicsPackage) where
  molecularOrbitalsClosed : M.molecularOrbitals
  thermodynamicPotentialsClosed : M.thermodynamicPotentials
  orbitalEnergyLevelsClosed : M.orbitalEnergyLevels
  electronConfigurationClosed : M.electronConfiguration

def MolecularOrbitalThermodynamicsClosed
    (M : MolecularOrbitalThermodynamicsPackage) : Prop :=
  M.molecularOrbitals ∧ M.thermodynamicPotentials ∧
  M.orbitalEnergyLevels ∧ M.electronConfiguration

theorem molecular_orbital_thermodynamics_closed_from_evidence
    (M : MolecularOrbitalThermodynamicsPackage)
    (E : MolecularOrbitalThermodynamicsEvidence M) :
    MolecularOrbitalThermodynamicsClosed M := by
  exact And.intro E.molecularOrbitalsClosed
    (And.intro E.thermodynamicPotentialsClosed
      (And.intro E.orbitalEnergyLevelsClosed E.electronConfigurationClosed))

end ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
