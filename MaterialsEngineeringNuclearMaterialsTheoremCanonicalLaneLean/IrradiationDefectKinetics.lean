import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean

structure IrradiationDefectPackage where
  defectType : Type u
  migrationEnergy : Prop
  recombinationRate : Prop
  sinkStrength : Prop

structure IrradiationDefectEvidence (I : IrradiationDefectPackage) where
  migrationEnergyClosed : I.migrationEnergy
  recombinationRateClosed : I.recombinationRate
  sinkStrengthClosed : I.sinkStrength

def IrradiationDefectClosed (I : IrradiationDefectPackage) : Prop :=
  I.migrationEnergy ∧ I.recombinationRate ∧ I.sinkStrength

theorem irradiation_defect_closed_from_evidence (I : IrradiationDefectPackage) (E : IrradiationDefectEvidence I) :
    IrradiationDefectClosed I := by
  exact And.intro E.migrationEnergyClosed (And.intro E.recombinationRateClosed E.sinkStrengthClosed)

end MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean
end HautevilleHouse