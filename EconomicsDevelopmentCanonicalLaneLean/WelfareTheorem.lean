import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsDevelopmentCanonicalLaneLean

structure WelfareTheoremPackage where
  equilibriumAllocation : Type u
  paretoEfficientAllocation : Type v
  firstWelfareTheorem : Prop
  secondWelfareTheorem : Prop
  priceDecentralization : Prop

structure WelfareTheoremEvidence (W : WelfareTheoremPackage) where
  firstWelfareTheoremClosed : W.firstWelfareTheorem
  secondWelfareTheoremClosed : W.secondWelfareTheorem
  priceDecentralizationClosed : W.priceDecentralization

def WelfareTheoremClosed (W : WelfareTheoremPackage) : Prop :=
  W.firstWelfareTheorem ∧ W.secondWelfareTheorem ∧ W.priceDecentralization

theorem welfare_theorem_closed_from_evidence (W : WelfareTheoremPackage)
    (E : WelfareTheoremEvidence W) : WelfareTheoremClosed W := by
  exact And.intro E.firstWelfareTheoremClosed
    (And.intro E.secondWelfareTheoremClosed E.priceDecentralizationClosed)

end EconomicsDevelopmentCanonicalLaneLean
end HautevilleHouse