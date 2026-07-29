import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsDevelopmentCanonicalLaneLean

structure WelfareTheoremsPackage where
  economyType : Type u
  equilibriumAllocation : Type v
  paretoOptimum : Type w
  firstWelfareTheorem : Prop
  secondWelfareTheorem : Prop
  lumpSumTransfers : Prop
  convexityAssumptions : Prop

structure WelfareTheoremsEvidence (W : WelfareTheoremsPackage) where
  firstWelfareTheoremClosed : W.firstWelfareTheorem
  secondWelfareTheoremClosed : W.secondWelfareTheorem
  lumpSumTransfersClosed : W.lumpSumTransfers
  convexityAssumptionsClosed : W.convexityAssumptions

def WelfareTheoremsClosed (W : WelfareTheoremsPackage) : Prop :=
  W.firstWelfareTheorem ∧ W.secondWelfareTheorem ∧
  W.lumpSumTransfers ∧ W.convexityAssumptions

theorem welfare_theorems_closed_from_evidence (W : WelfareTheoremsPackage)
    (Ev : WelfareTheoremsEvidence W) : WelfareTheoremsClosed W := by
  exact And.intro Ev.firstWelfareTheoremClosed
    (And.intro Ev.secondWelfareTheoremClosed
      (And.intro Ev.lumpSumTransfersClosed Ev.convexityAssumptionsClosed))

end EconomicsDevelopmentCanonicalLaneLean
end HautevilleHouse
