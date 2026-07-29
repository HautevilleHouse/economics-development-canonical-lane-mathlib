import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsDevelopmentCanonicalLaneLean

structure MarketFailurePackage where
  externalityExists : Prop
  publicGoodProvision : Prop
  asymmetricInformation : Prop
  marketPower : Prop
  inefficiencyResult : Prop

structure MarketFailureEvidence (M : MarketFailurePackage) where
  externalityExistsClosed : M.externalityExists
  publicGoodProvisionClosed : M.publicGoodProvision
  asymmetricInformationClosed : M.asymmetricInformation
  marketPowerClosed : M.marketPower
  inefficiencyResultClosed : M.inefficiencyResult

def MarketFailureClosed (M : MarketFailurePackage) : Prop :=
  M.externalityExists ∧ M.publicGoodProvision ∧
  M.asymmetricInformation ∧ M.marketPower ∧ M.inefficiencyResult

theorem market_failure_closed_from_evidence (M : MarketFailurePackage)
    (E : MarketFailureEvidence M) : MarketFailureClosed M := by
  exact And.intro E.externalityExistsClosed
    (And.intro E.publicGoodProvisionClosed
      (And.intro E.asymmetricInformationClosed
        (And.intro E.marketPowerClosed E.inefficiencyResultClosed)))

end EconomicsDevelopmentCanonicalLaneLean
end HautevilleHouse