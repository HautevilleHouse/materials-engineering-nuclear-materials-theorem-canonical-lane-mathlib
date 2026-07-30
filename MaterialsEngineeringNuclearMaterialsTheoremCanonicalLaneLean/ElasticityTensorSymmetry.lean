import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean

structure ElasticityTensorPackage where
  stiffnessTensor : Type u
  complianceTensor : Type v
  symmetryReduction : Prop
  crystalClass : String

structure ElasticityTensorEvidence (E : ElasticityTensorPackage) where
  symmetryReductionClosed : E.symmetryReduction
  crystalClassClosed : E.crystalClass

def ElasticityTensorClosed (E : ElasticityTensorPackage) : Prop :=
  E.symmetryReduction ∧ E.crystalClass

theorem elasticity_tensor_closed_from_evidence (E : ElasticityTensorPackage) (Ev : ElasticityTensorEvidence E) :
    ElasticityTensorClosed E := by
  exact And.intro Ev.symmetryReductionClosed Ev.crystalClassClosed

end MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean
end HautevilleHouse