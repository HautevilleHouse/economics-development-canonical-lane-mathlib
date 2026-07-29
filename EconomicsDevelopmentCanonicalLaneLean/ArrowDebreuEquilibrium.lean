import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsDevelopmentCanonicalLaneLean

structure ArrowDebreuEquilibriumPackage where
  commoditySpace : Type u
  priceSystem : Type v
  agentEndowments : Type w
  preferences : Type x
  equilibriumPrices : Prop
  equilibriumAllocation : Prop
  existenceTheorem : Prop
  firstWelfareTheorem : Prop
  secondWelfareTheorem : Prop

structure ArrowDebreuEquilibriumEvidence (A : ArrowDebreuEquilibriumPackage) where
  equilibriumPricesClosed : A.equilibriumPrices
  equilibriumAllocationClosed : A.equilibriumAllocation
  existenceTheoremClosed : A.existenceTheorem
  firstWelfareTheoremClosed : A.firstWelfareTheorem
  secondWelfareTheoremClosed : A.secondWelfareTheorem

def ArrowDebreuEquilibriumClosed (A : ArrowDebreuEquilibriumPackage) : Prop :=
  A.equilibriumPrices ∧ A.equilibriumAllocation ∧ A.existenceTheorem ∧ A.firstWelfareTheorem ∧ A.secondWelfareTheorem

theorem arrow_debreu_equilibrium_closed_from_evidence (A : ArrowDebreuEquilibriumPackage) (E : ArrowDebreuEquilibriumEvidence A) :
    ArrowDebreuEquilibriumClosed A := by
  exact And.intro E.equilibriumPricesClosed (And.intro E.equilibriumAllocationClosed (And.intro E.existenceTheoremClosed (And.intro E.firstWelfareTheoremClosed E.secondWelfareTheoremClosed)))

end EconomicsDevelopmentCanonicalLaneLean
end HautevilleHouse