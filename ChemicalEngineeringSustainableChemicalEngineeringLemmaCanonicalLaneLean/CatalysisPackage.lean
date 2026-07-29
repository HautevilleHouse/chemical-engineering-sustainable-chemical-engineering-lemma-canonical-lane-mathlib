import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean

structure CatalysisPackage where
  catalystSurface : Type u
  adsorptionIsotherm : Type v
  turnoverFrequency : Type w
  rateLimitingStep : Prop
  catalystRegeneration : Prop
  activationEnergyReduced : Prop
  rateLimitingStepTerm : rateLimitingStep
  catalystRegenerationTerm : catalystRegeneration
  activationEnergyReducedTerm : activationEnergyReduced

structure CatalysisEvidence (C : CatalysisPackage) where
  rateLimitingStepClosed : C.rateLimitingStep
  catalystRegenerationClosed : C.catalystRegeneration
  activationEnergyReducedClosed : C.activationEnergyReduced

def CatalysisClosed (C : CatalysisPackage) : Prop :=
  C.rateLimitingStep ∧ C.catalystRegeneration ∧ C.activationEnergyReduced

theorem catalysis_closed_from_evidence (C : CatalysisPackage) (E : CatalysisEvidence C) :
    CatalysisClosed C := by
  exact And.intro E.rateLimitingStepClosed (And.intro E.catalystRegenerationClosed E.activationEnergyReducedClosed)

end ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse