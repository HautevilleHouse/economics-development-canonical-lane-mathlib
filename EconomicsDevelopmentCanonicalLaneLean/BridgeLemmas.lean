import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsDevelopmentCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.equilibriumExists ∧ A.object.welfareProperties

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro A.object.equilibriumExists A.object.welfareProperties

end EconomicsDevelopmentCanonicalLaneLean
end HautevilleHouse