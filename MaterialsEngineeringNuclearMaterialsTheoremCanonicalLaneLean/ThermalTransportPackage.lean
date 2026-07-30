import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean

structure ThermalTransportPackage where
  thermalConductivity : Type u
  specificHeat : Type v
  heatEquation : Prop
  temperatureProfile : Prop
  heatEquationTerm : heatEquation
  temperatureProfileTerm : temperatureProfile

structure ThermalTransportEvidence (T : ThermalTransportPackage) where
  heatEquationClosed : T.heatEquation
  temperatureProfileClosed : T.temperatureProfile

def ThermalTransportClosed (T : ThermalTransportPackage) : Prop :=
  T.heatEquation ∧ T.temperatureProfile

theorem thermal_transport_closed_from_evidence (T : ThermalTransportPackage) (E : ThermalTransportEvidence T) :
    ThermalTransportClosed T := by
  exact And.intro E.heatEquationClosed E.temperatureProfileClosed

end MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean
end HautevilleHouse