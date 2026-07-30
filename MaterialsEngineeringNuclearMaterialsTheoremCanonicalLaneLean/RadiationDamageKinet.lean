import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean

structure RadiationDamageKinetPackage where
  displacementCascade : Prop
  defectMigration : Prop
  annealing : Prop
  swelling : Prop

structure RadiationDamageKinetEvidence (R : RadiationDamageKinetPackage) where
  displacementCascadeClosed : R.displacementCascade
  defectMigrationClosed : R.defectMigration
  annealingClosed : R.annealing
  swellingClosed : R.swelling

def RadiationDamageKinetClosed (R : RadiationDamageKinetPackage) : Prop :=
  R.displacementCascade ∧ R.defectMigration ∧ R.annealing ∧ R.swelling

theorem radiation_damage_kinet_closed_from_evidence (R : RadiationDamageKinetPackage) (E : RadiationDamageKinetEvidence R) : RadiationDamageKinetClosed R := by
  exact And.intro E.displacementCascadeClosed (And.intro E.defectMigrationClosed (And.intro E.annealingClosed E.swellingClosed))

end MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
