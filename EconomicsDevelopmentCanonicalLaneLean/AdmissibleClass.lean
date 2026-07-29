import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsDevelopmentCanonicalLaneLean

structure EconomicsAdmissibleObject where
  economyDescription : String
  equilibriumExists : Prop
  welfareProperties : Prop

structure AdmissibleClass where
  object : EconomicsAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.equilibriumExists ∧ A.object.welfareProperties ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconomicsDevelopmentCanonicalLaneLean
end HautevilleHouse