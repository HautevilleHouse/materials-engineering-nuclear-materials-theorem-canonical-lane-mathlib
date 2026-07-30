import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean

structure ElasticConstantsPackage where
  stiffnessTensor : Type u
  complianceTensor : Type v
  youngModulusComputed : Prop
  shearModulusComputed : Prop
  poissonRatioComputed : Prop
  elasticSymmetriesEnforced : Prop

structure ElasticConstantsEvidence (E : ElasticConstantsPackage) where
  youngModulusComputedClosed : E.youngModulusComputed
  shearModulusComputedClosed : E.shearModulusComputed
  poissonRatioComputedClosed : E.poissonRatioComputed
  elasticSymmetriesEnforcedClosed : E.elasticSymmetriesEnforced

def ElasticConstantsClosed (E : ElasticConstantsPackage) : Prop :=
  E.youngModulusComputed ∧ E.shearModulusComputed ∧ E.poissonRatioComputed ∧ E.elasticSymmetriesEnforced

theorem elastic_constants_closed_from_evidence (E : ElasticConstantsPackage) (Ev : ElasticConstantsEvidence E) : ElasticConstantsClosed E := by
  exact And.intro Ev.youngModulusComputedClosed (And.intro Ev.shearModulusComputedClosed (And.intro Ev.poissonRatioComputedClosed Ev.elasticSymmetriesEnforcedClosed))

end MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean
end HautevilleHouse