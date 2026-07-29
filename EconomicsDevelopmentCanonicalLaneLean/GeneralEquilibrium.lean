import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsDevelopmentCanonicalLaneLean

structure ArrowDebreuCommoditySpace where
  commodityTypes : Type u
  priceSystem : Type v
  consumptionSets : Type w
  productionSets : Type x
  preferences : Type y
  endowments : Type z
  marketClearingCondition : Prop
  paretoOptimality : Prop

def generalEquilibriumClosed (A : ArrowDebreuCommoditySpace) : Prop :=
  A.marketClearingCondition ∧ A.paretoOptimality

end EconomicsDevelopmentCanonicalLaneLean
end HautevilleHouse
