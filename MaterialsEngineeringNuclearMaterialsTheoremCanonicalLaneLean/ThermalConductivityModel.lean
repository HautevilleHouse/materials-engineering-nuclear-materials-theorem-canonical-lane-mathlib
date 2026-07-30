import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean

structure ThermalConductivityModelPackage where
  phononTransport : Prop
  electronContribution : Prop
  radiationEffects : Prop
  temperatureDependence : Prop

structure ThermalConductivityModelEvidence (T : ThermalConductivityModelPackage) where
  phononTransportClosed : T.phononTransport
  electronContributionClosed : T.electronContribution
  radiationEffectsClosed : T.radiationEffects
  temperatureDependenceClosed : T.temperatureDependence

def ThermalConductivityModelClosed (T : ThermalConductivityModelPackage) : Prop :=
  T.phononTransport ∧ T.electronContribution ∧ T.radiationEffects ∧ T.temperatureDependence

theorem thermal_conductivity_model_closed_from_evidence (T : ThermalConductivityModelPackage) (E : ThermalConductivityModelEvidence T) : ThermalConductivityModelClosed T := by
  exact And.intro E.phononTransportClosed (And.intro E.electronContributionClosed (And.intro E.radiationEffectsClosed E.temperatureDependenceClosed))

end MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
