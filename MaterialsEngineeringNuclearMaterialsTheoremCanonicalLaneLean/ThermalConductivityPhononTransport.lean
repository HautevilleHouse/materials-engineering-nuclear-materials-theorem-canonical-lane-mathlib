import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean

structure ThermalConductivityPackage where
  phononDispersion : Type u
  relaxationTime : Prop
  specificHeat : Prop
  thermalConductivityTensor : Prop

structure ThermalConductivityEvidence (T : ThermalConductivityPackage) where
  relaxationTimeClosed : T.relaxationTime
  specificHeatClosed : T.specificHeat
  thermalConductivityTensorClosed : T.thermalConductivityTensor

def ThermalConductivityClosed (T : ThermalConductivityPackage) : Prop :=
  T.relaxationTime ∧ T.specificHeat ∧ T.thermalConductivityTensor

theorem thermal_conductivity_closed_from_evidence (T : ThermalConductivityPackage) (E : ThermalConductivityEvidence T) :
    ThermalConductivityClosed T := by
  exact And.intro E.relaxationTimeClosed (And.intro E.specificHeatClosed E.thermalConductivityTensorClosed)

end MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean
end HautevilleHouse