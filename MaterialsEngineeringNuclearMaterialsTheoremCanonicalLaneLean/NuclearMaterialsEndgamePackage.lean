import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean.CrystallographyPackage
import MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean.PhaseDiagramPackage
import MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean.ElasticityPackage
import MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean.FractureMechanicsPackage
import MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean.IrradiationDamagePackage
import MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean.ThermalTransportPackage

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean

structure NuclearMaterialsFoundation where
  crystallography : CrystallographyPackage
  crystallographyEvidence : CrystallographyEvidence crystallography
  phaseDiagram : PhaseDiagramPackage
  phaseDiagramEvidence : PhaseDiagramEvidence phaseDiagram
  elasticity : ElasticityPackage
  elasticityEvidence : ElasticityEvidence elasticity
  fracture : FractureMechanicsPackage
  fractureEvidence : FractureMechanicsEvidence fracture
  irradiation : IrradiationDamagePackage
  irradiationEvidence : IrradiationDamageEvidence irradiation
  thermal : ThermalTransportPackage
  thermalEvidence : ThermalTransportEvidence thermal

def NuclearMaterialsFoundationClosed (F : NuclearMaterialsFoundation) : Prop :=
  CrystallographyClosed F.crystallography ∧
  PhaseDiagramClosed F.phaseDiagram ∧
  ElasticityClosed F.elasticity ∧
  FractureMechanicsClosed F.fracture ∧
  IrradiationDamageClosed F.irradiation ∧
  ThermalTransportClosed F.thermal

theorem nuclear_materials_foundation_closed_from_evidence
    (F : NuclearMaterialsFoundation) : NuclearMaterialsFoundationClosed F := by
  refine And.intro (crystallography_closed_from_evidence F.crystallography F.crystallographyEvidence)
    (And.intro (phase_diagram_closed_from_evidence F.phaseDiagram F.phaseDiagramEvidence)
      (And.intro (elasticity_closed_from_evidence F.elasticity F.elasticityEvidence)
        (And.intro (fracture_mechanics_closed_from_evidence F.fracture F.fractureEvidence)
          (And.intro (irradiation_damage_closed_from_evidence F.irradiation F.irradiationEvidence)
            (thermal_transport_closed_from_evidence F.thermal F.thermalEvidence)))))

end MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean
end HautevilleHouse