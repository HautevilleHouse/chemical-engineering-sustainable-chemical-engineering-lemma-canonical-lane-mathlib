import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean

structure ReactionKineticsPackage where
  rateExpression : Type u
  activationEnergy : Type v
  preExponentialFactor : Type w
  reactionOrder : List Nat
  equilibriumConstant : Type x
  rateConstantSatisfies : Prop
  equilibriumExpressionValid : Prop
  rateExpressionDefined : rateConstantSatisfies
  equilibriumExpressionClosed : equilibriumExpressionValid

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateConstantSatisfiesClosed : R.rateConstantSatisfies
  equilibriumExpressionValidClosed : R.equilibriumExpressionValid

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateConstantSatisfies ∧ R.equilibriumExpressionValid

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) :
    ReactionKineticsClosed R := by
  exact And.intro E.rateConstantSatisfiesClosed E.equilibriumExpressionValidClosed

end ChemicalEngineeringSustainableChemicalEngineeringLemmaCanonicalLaneLean
end HautevilleHouse