import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsDevelopmentCanonicalLaneLean

structure WelfareEconomicsPackage where
  socialWelfareFunction : Type u
  paretoEfficiency : Prop
  equityAxioms : Prop
  socialChoiceRule : Type v
  impossibilityTheorem : Prop
  compensationCriteria : Prop

structure WelfareEconomicsEvidence (W : WelfareEconomicsPackage) where
  paretoEfficiencyClosed : W.paretoEfficiency
  equityAxiomsClosed : W.equityAxioms
  impossibilityTheoremClosed : W.impossibilityTheorem
  compensationCriteriaClosed : W.compensationCriteria

def WelfareEconomicsClosed (W : WelfareEconomicsPackage) : Prop :=
  W.paretoEfficiency ∧ W.equityAxioms ∧ W.impossibilityTheorem ∧ W.compensationCriteria

theorem welfare_economics_closed_from_evidence (W : WelfareEconomicsPackage) (E : WelfareEconomicsEvidence W) :
    WelfareEconomicsClosed W := by
  exact And.intro E.paretoEfficiencyClosed (And.intro E.equityAxiomsClosed (And.intro E.impossibilityTheoremClosed E.compensationCriteriaClosed))

end EconomicsDevelopmentCanonicalLaneLean
end HautevilleHouse