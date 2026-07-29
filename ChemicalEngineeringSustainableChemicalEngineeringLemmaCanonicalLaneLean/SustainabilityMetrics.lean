import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean

structure SustainabilityMetricsPackage where
  atomEconomy : Prop
  environmentalFactor : Prop
  energyEfficiency : Prop
  renewableFeedstockFraction : Prop

structure SustainabilityMetricsEvidence (S : SustainabilityMetricsPackage) where
  atomEconomyClosed : S.atomEconomy
  environmentalFactorClosed : S.environmentalFactor
  energyEfficiencyClosed : S.energyEfficiency
  renewableFeedstockFractionClosed : S.renewableFeedstockFraction

def SustainabilityMetricsClosed (S : SustainabilityMetricsPackage) : Prop :=
  S.atomEconomy ∧ S.environmentalFactor ∧
  S.energyEfficiency ∧ S.renewableFeedstockFraction

theorem sustainability_metrics_closed_from_evidence (S : SustainabilityMetricsPackage)
    (E : SustainabilityMetricsEvidence S) : SustainabilityMetricsClosed S := by
  exact And.intro E.atomEconomyClosed
    (And.intro E.environmentalFactorClosed
      (And.intro E.energyEfficiencyClosed E.renewableFeedstockFractionClosed))

end ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse
