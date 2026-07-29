import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsDevelopmentCanonicalLaneLean.GeneralEquilibrium

namespace HautevilleHouse
namespace EconomicsDevelopmentCanonicalLaneLean

structure SolowGrowthModel where
  productionFunction : Type u
  capitalAccumulation : Type v
  laborForceGrowth : Type w
  savingsRate : ℝ
  depreciationRate : ℝ
  steadyStateExists : Prop
  convergenceCondition : Prop

def solowClosed (S : SolowGrowthModel) : Prop :=
  S.steadyStateExists ∧ S.convergenceCondition

end EconomicsDevelopmentCanonicalLaneLean
end HautevilleHouse
