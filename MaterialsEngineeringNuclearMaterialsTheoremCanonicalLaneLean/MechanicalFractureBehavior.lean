import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean

structure MechanicalFracturePackage where
  stressStrainRelation : Type u
  fractureToughness : Prop
  fatigueCrackGrowth : Prop
  irradiationHardening : Prop
  creepDeformation : Prop
  failureCriterion : Prop
  multiaxialLoading : Prop

structure MechanicalFractureEvidence (M : MechanicalFracturePackage) where
  fractureToughnessClosed : M.fractureToughness
  fatigueCrackGrowthClosed : M.fatigueCrackGrowth
  irradiationHardeningClosed : M.irradiationHardening
  creepDeformationClosed : M.creepDeformation
  failureCriterionClosed : M.failureCriterion
  multiaxialLoadingClosed : M.multiaxialLoading

def MechanicalFractureClosed (M : MechanicalFracturePackage) : Prop :=
  M.fractureToughness ∧ M.fatigueCrackGrowth ∧
  M.irradiationHardening ∧ M.creepDeformation ∧
  M.failureCriterion ∧ M.multiaxialLoading

theorem mechanical_fracture_closed_from_evidence
    (M : MechanicalFracturePackage) (E : MechanicalFractureEvidence M) :
    MechanicalFractureClosed M := by
  exact And.intro E.fractureToughnessClosed
    (And.intro E.fatigueCrackGrowthClosed
      (And.intro E.irradiationHardeningClosed
        (And.intro E.creepDeformationClosed
          (And.intro E.failureCriterionClosed
            E.multiaxialLoadingClosed))))

end MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean
end HautevilleHouse