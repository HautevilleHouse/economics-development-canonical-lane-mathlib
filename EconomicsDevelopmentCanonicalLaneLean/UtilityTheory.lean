import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsDevelopmentCanonicalLaneLean.GeneralEquilibrium

namespace HautevilleHouse
namespace EconomicsDevelopmentCanonicalLaneLean

structure UtilityFunction where
  consumerSet : Type u
  consumptionSet : Type v
  utilityMapping : consumptionSet → ℝ
  continuity : Prop
  monotonicity : Prop
  convexity : Prop

def utilityClosed (U : UtilityFunction) : Prop :=
  U.continuity ∧ U.monotonicity ∧ U.convexity

end EconomicsDevelopmentCanonicalLaneLean
end HautevilleHouse
