import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsDevelopmentCanonicalLaneLean

structure AssetPricingPackage where
  stateSpace : Type u
  assetPrices : Type v
  stochasticDiscountFactor : Type w
  noArbitrageCondition : Prop
  marketCompleteness : Prop
  equilibriumPricing : Prop
  riskNeutralValuation : Prop

structure AssetPricingEvidence (A : AssetPricingPackage) where
  noArbitrageConditionClosed : A.noArbitrageCondition
  marketCompletenessClosed : A.marketCompleteness
  equilibriumPricingClosed : A.equilibriumPricing
  riskNeutralValuationClosed : A.riskNeutralValuation

def AssetPricingClosed (A : AssetPricingPackage) : Prop :=
  A.noArbitrageCondition ∧ A.marketCompleteness ∧ A.equilibriumPricing ∧ A.riskNeutralValuation

theorem asset_pricing_closed_from_evidence (A : AssetPricingPackage) (E : AssetPricingEvidence A) :
    AssetPricingClosed A := by
  exact And.intro E.noArbitrageConditionClosed (And.intro E.marketCompletenessClosed (And.intro E.equilibriumPricingClosed E.riskNeutralValuationClosed))

end EconomicsDevelopmentCanonicalLaneLean
end HautevilleHouse