import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsDevelopmentCanonicalLaneLean

structure GrowthModelsPackage where
  productionFunction : Type u
  capitalAccumulation : Type v
  consumptionPath : Type w
  steadyStateExistence : Prop
  saddlePathStability : Prop
  optimalGrowthPath : Prop
  convergenceProperty : Prop

structure GrowthModelsEvidence (G : GrowthModelsPackage) where
  steadyStateExistenceClosed : G.steadyStateExistence
  saddlePathStabilityClosed : G.saddlePathStability
  optimalGrowthPathClosed : G.optimalGrowthPath
  convergencePropertyClosed : G.convergenceProperty

def GrowthModelsClosed (G : GrowthModelsPackage) : Prop :=
  G.steadyStateExistence ∧ G.saddlePathStability ∧ G.optimalGrowthPath ∧ G.convergenceProperty

theorem growth_models_closed_from_evidence (G : GrowthModelsPackage) (E : GrowthModelsEvidence G) :
    GrowthModelsClosed G := by
  exact And.intro E.steadyStateExistenceClosed (And.intro E.saddlePathStabilityClosed (And.intro E.optimalGrowthPathClosed E.convergencePropertyClosed))

end EconomicsDevelopmentCanonicalLaneLean
end HautevilleHouse