import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : Type u
  fractureToughness : Type v
  crackPropagationCriterion : Prop
  toughnessFromMicrostructure : Prop
  irradiationEffectModeled : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  crackPropagationCriterionClosed : F.crackPropagationCriterion
  toughnessFromMicrostructureClosed : F.toughnessFromMicrostructure
  irradiationEffectModeledClosed : F.irradiationEffectModeled

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.crackPropagationCriterion ∧ F.toughnessFromMicrostructure ∧ F.irradiationEffectModeled

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.crackPropagationCriterionClosed (And.intro E.toughnessFromMicrostructureClosed E.irradiationEffectModeledClosed)

end MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean
end HautevilleHouse