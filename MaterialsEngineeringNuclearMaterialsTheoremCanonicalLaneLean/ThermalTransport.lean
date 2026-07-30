import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean

structure ThermalTransportPackage where
  thermalConductivity : ℝ
  heatCapacity : ℝ
  temperatureField : Type u
  fourierLaw : Prop
  heatEquation : Prop
  thermalDiffusivity : ℝ

structure ThermalTransportEvidence (T : ThermalTransportPackage) where
  conductivityPositive : T.thermalConductivity > 0
  heatCapacityPositive : T.heatCapacity > 0
  temperatureFieldDefined : T.temperatureField = T.temperatureField
  fourierLawHolds : T.fourierLaw
  heatEquationSatisfied : T.heatEquation
  diffusivityMatched : T.thermalDiffusivity = T.thermalConductivity / T.heatCapacity

def ThermalTransportClosed (T : ThermalTransportPackage) : Prop :=
  T.fourierLaw ∧ T.heatEquation

theorem thermal_transport_closed_from_evidence (T : ThermalTransportPackage) (E : ThermalTransportEvidence T) : ThermalTransportClosed T := by
  exact And.intro E.fourierLawHolds E.heatEquationSatisfied

end MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean
end HautevilleHouse