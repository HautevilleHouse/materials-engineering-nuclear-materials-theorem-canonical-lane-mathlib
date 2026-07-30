import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean

structure CrystallographyDefectPackage where
  latticeType : Type u
  defectType : Type v
  pointDefectDensity : Prop
  lineDefectDensity : Prop
  planarDefectDensity : Prop
  irradiationDamageRate : Prop
  defectMigrationEnergy : Prop
  sinkStrengthDistribution : Prop

structure CrystallographyDefectEvidence (C : CrystallographyDefectPackage) where
  pointDefectDensityClosed : C.pointDefectDensity
  lineDefectDensityClosed : C.lineDefectDensity
  planarDefectDensityClosed : C.planarDefectDensity
  irradiationDamageRateClosed : C.irradiationDamageRate
  defectMigrationEnergyClosed : C.defectMigrationEnergy
  sinkStrengthDistributionClosed : C.sinkStrengthDistribution

def CrystallographyDefectClosed (C : CrystallographyDefectPackage) : Prop :=
  C.pointDefectDensity ∧ C.lineDefectDensity ∧
  C.planarDefectDensity ∧ C.irradiationDamageRate ∧
  C.defectMigrationEnergy ∧ C.sinkStrengthDistribution

theorem crystallography_defect_closed_from_evidence
    (C : CrystallographyDefectPackage) (E : CrystallographyDefectEvidence C) :
    CrystallographyDefectClosed C := by
  exact And.intro E.pointDefectDensityClosed
    (And.intro E.lineDefectDensityClosed
      (And.intro E.planarDefectDensityClosed
        (And.intro E.irradiationDamageRateClosed
          (And.intro E.defectMigrationEnergyClosed
            E.sinkStrengthDistributionClosed))))

end MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean
end HautevilleHouse