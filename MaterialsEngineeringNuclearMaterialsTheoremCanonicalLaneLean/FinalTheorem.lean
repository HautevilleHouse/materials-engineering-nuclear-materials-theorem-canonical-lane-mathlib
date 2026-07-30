import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean.BridgeLemmas
import MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean

def ConstrainedNuclearMaterialsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_nuclear_materials_endgame (A : AdmissibleClass) :
    ConstrainedNuclearMaterialsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean
end HautevilleHouse