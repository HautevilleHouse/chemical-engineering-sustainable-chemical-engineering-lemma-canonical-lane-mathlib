import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean

structure ReactorOptimizationPackage where
  idealReactorModel : Prop
  nonidealCorrections : Prop
  conversionMaximized : Prop
  selectivityOptimized : Prop

structure ReactorOptimizationEvidence (R : ReactorOptimizationPackage) where
  idealReactorModelClosed : R.idealReactorModel
  nonidealCorrectionsClosed : R.nonidealCorrections
  conversionMaximizedClosed : R.conversionMaximized
  selectivityOptimizedClosed : R.selectivityOptimized

def ReactorOptimizationClosed (R : ReactorOptimizationPackage) : Prop :=
  R.idealReactorModel ∧ R.nonidealCorrections ∧ R.conversionMaximized ∧ R.selectivityOptimized

theorem reactor_optimization_closed_from_evidence (R : ReactorOptimizationPackage) (E : ReactorOptimizationEvidence R) :
    ReactorOptimizationClosed R := by
  exact And.intro E.idealReactorModelClosed
    (And.intro E.nonidealCorrectionsClosed
      (And.intro E.conversionMaximizedClosed E.selectivityOptimizedClosed))

end ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse