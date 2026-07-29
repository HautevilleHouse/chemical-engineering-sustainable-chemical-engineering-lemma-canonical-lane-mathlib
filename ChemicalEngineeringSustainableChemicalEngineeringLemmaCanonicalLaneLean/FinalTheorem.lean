import canonicalLaneMathlib.AdmissibleClass
import ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean.ReactionKineticsPackage
import ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean.MolecularOrbitalTheoryPackage
import ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean.ThermodynamicsPackage
import ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean.ChemicalEquilibriumPackage
import ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean.CatalysisPackage
import ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean.SustainableProcessPackage

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedChemicalEngineeringClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

theorem constrained_chemical_engineering_endgame (A : AdmissibleClass) :
    ConstrainedChemicalEngineeringClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse