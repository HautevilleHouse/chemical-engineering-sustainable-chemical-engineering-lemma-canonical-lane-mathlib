import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean

structure ReactionRatePackage where
  rateConstant : Type u
  concentration : Type v
  rateLaw : Prop
  arrheniusRelation : Prop
  equilibriumConstant : Prop

structure ReactionRateEvidence (R : ReactionRatePackage) where
  rateLawClosed : R.rateLaw
  arrheniusRelationClosed : R.arrheniusRelation
  equilibriumConstantClosed : R.equilibriumConstant

def ReactionRateClosed (R : ReactionRatePackage) : Prop :=
  R.rateLaw ∧ R.arrheniusRelation ∧ R.equilibriumConstant

theorem reaction_rate_closed_from_evidence (R : ReactionRatePackage) (E : ReactionRateEvidence R) : ReactionRateClosed R := by
  exact And.intro E.rateLawClosed (And.intro E.arrheniusRelationClosed E.equilibriumConstantClosed)

end ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse