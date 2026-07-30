import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean

structure IrradiationDamagePackage where
  displacementDamage : Type u
  defectConcentration : ℝ
  swellingRate : ℝ
  irradiationFlux : ℝ
  damageAccumulation : Prop
  annealingRecovery : Prop

structure IrradiationDamageEvidence (I : IrradiationDamagePackage) where
  displacementModelDefined : I.displacementDamage = I.displacementDamage
  defectConcentrationPositive : I.defectConcentration ≥ 0
  swellingRateMeasured : I.swellingRate ≥ 0
  fluxPositive : I.irradiationFlux > 0
  accumulationModeled : I.damageAccumulation
  recoveryModeled : I.annealingRecovery

def IrradiationDamageClosed (I : IrradiationDamagePackage) : Prop :=
  I.damageAccumulation ∧ I.annealingRecovery

theorem irradiation_damage_closed_from_evidence (I : IrradiationDamagePackage) (E : IrradiationDamageEvidence I) : IrradiationDamageClosed I := by
  exact And.intro E.accumulationModeled E.recoveryModeled

end MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean
end HautevilleHouse