import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean

structure IrradiationDamagePackage where
  displacementCascade : Type u
  defectFormation : Type v
  swellingBehavior : Prop
  embrittlementEffect : Prop
  swellingBehaviorTerm : swellingBehavior
  embrittlementEffectTerm : embrittlementEffect

structure IrradiationDamageEvidence (I : IrradiationDamagePackage) where
  swellingBehaviorClosed : I.swellingBehavior
  embrittlementEffectClosed : I.embrittlementEffect

def IrradiationDamageClosed (I : IrradiationDamagePackage) : Prop :=
  I.swellingBehavior ∧ I.embrittlementEffect

theorem irradiation_damage_closed_from_evidence (I : IrradiationDamagePackage) (E : IrradiationDamageEvidence I) :
    IrradiationDamageClosed I := by
  exact And.intro E.swellingBehaviorClosed E.embrittlementEffectClosed

end MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean
end HautevilleHouse