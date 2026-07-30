import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean

structure RadiationDamagePackage where
  defectProduction : Type u
  cascadeSimulation : Type v
  swellingModel : Prop
  embrittlementModel : Prop
  annealingRecoveryModel : Prop
  claddingPerformanceModel : Prop

structure RadiationDamageEvidence (R : RadiationDamagePackage) where
  swellingModelClosed : R.swellingModel
  embrittlementModelClosed : R.embrittlementModel
  annealingRecoveryModelClosed : R.annealingRecoveryModel
  claddingPerformanceModelClosed : R.claddingPerformanceModel

def RadiationDamageClosed (R : RadiationDamagePackage) : Prop :=
  R.swellingModel ∧ R.embrittlementModel ∧ R.annealingRecoveryModel ∧ R.claddingPerformanceModel

theorem radiation_damage_closed_from_evidence (R : RadiationDamagePackage) (E : RadiationDamageEvidence R) : RadiationDamageClosed R := by
  exact And.intro E.swellingModelClosed (And.intro E.embrittlementModelClosed (And.intro E.annealingRecoveryModelClosed E.claddingPerformanceModelClosed))

end MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean
end HautevilleHouse