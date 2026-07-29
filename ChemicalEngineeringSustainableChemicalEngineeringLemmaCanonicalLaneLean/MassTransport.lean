import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean

structure MassTransportPackage where
  diffusionEquation : Prop
  convectiveMassTransfer : Prop
  boundaryLayerModel : Prop
  effectivenessFactor : Prop

structure MassTransportEvidence (M : MassTransportPackage) where
  diffusionEquationClosed : M.diffusionEquation
  convectiveMassTransferClosed : M.convectiveMassTransfer
  boundaryLayerModelClosed : M.boundaryLayerModel
  effectivenessFactorClosed : M.effectivenessFactor

def MassTransportClosed (M : MassTransportPackage) : Prop :=
  M.diffusionEquation ∧ M.convectiveMassTransfer ∧
  M.boundaryLayerModel ∧ M.effectivenessFactor

theorem mass_transport_closed_from_evidence (M : MassTransportPackage)
    (E : MassTransportEvidence M) : MassTransportClosed M := by
  exact And.intro E.diffusionEquationClosed
    (And.intro E.convectiveMassTransferClosed
      (And.intro E.boundaryLayerModelClosed E.effectivenessFactorClosed))

end ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
