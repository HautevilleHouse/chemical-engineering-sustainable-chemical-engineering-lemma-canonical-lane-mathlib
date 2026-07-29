import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean

structure CatalystKineticsPackage where
  reactionMechanism : Prop
  rateLawDerived : Prop
  surfaceAdsorptionModel : Prop
  turnoverFrequencyComputed : Prop

structure CatalystKineticsEvidence (C : CatalystKineticsPackage) where
  reactionMechanismClosed : C.reactionMechanism
  rateLawDerivedClosed : C.rateLawDerived
  surfaceAdsorptionModelClosed : C.surfaceAdsorptionModel
  turnoverFrequencyComputedClosed : C.turnoverFrequencyComputed

def CatalystKineticsClosed (C : CatalystKineticsPackage) : Prop :=
  C.reactionMechanism ∧ C.rateLawDerived ∧ C.surfaceAdsorptionModel ∧ C.turnoverFrequencyComputed

theorem catalyst_kinetics_closed_from_evidence (C : CatalystKineticsPackage) (E : CatalystKineticsEvidence C) :
    CatalystKineticsClosed C := by
  exact And.intro E.reactionMechanismClosed
    (And.intro E.rateLawDerivedClosed
      (And.intro E.surfaceAdsorptionModelClosed E.turnoverFrequencyComputedClosed))

end ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse