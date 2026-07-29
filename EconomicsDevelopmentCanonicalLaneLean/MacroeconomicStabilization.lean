import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsDevelopmentCanonicalLaneLean

structure MacroStabilizationModel where
  outputGap : Type u
  inflationRate : Type v
  policyRule : Type w
  taylorRule : Prop
  stabilityCondition : Prop
  uniquenessCondition : Prop

structure MacroStabilizationEvidence (M : MacroStabilizationModel) where
  taylorRuleClosed : M.taylorRule
  stabilityConditionClosed : M.stabilityCondition
  uniquenessConditionClosed : M.uniquenessCondition

def MacroStabilizationClosed (M : MacroStabilizationModel) : Prop :=
  M.taylorRule ∧ M.stabilityCondition ∧ M.uniquenessCondition

theorem macro_stabilization_closed_from_evidence (M : MacroStabilizationModel)
    (Ev : MacroStabilizationEvidence M) : MacroStabilizationClosed M := by
  exact And.intro Ev.taylorRuleClosed
    (And.intro Ev.stabilityConditionClosed Ev.uniquenessConditionClosed)

end EconomicsDevelopmentCanonicalLaneLean
end HautevilleHouse
