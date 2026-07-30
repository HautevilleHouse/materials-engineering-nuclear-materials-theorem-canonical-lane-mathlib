import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  compositionSpace : Type u
  temperatureRange : Type v
  pressureRange : Type w
  equilibriumPhasesIdentified : Prop
  phaseBoundariesMapped : Prop
  gibbsFreeEnergyMinimized : Prop
  stabilityCriteriaMet : Prop
  transformationKineticsModeled : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  equilibriumPhasesIdentifiedClosed : P.equilibriumPhasesIdentified
  phaseBoundariesMappedClosed : P.phaseBoundariesMapped
  gibbsFreeEnergyMinimizedClosed : P.gibbsFreeEnergyMinimized
  stabilityCriteriaMetClosed : P.stabilityCriteriaMet
  transformationKineticsModeledClosed : P.transformationKineticsModeled

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.equilibriumPhasesIdentified ∧ P.phaseBoundariesMapped ∧
  P.gibbsFreeEnergyMinimized ∧ P.stabilityCriteriaMet ∧
  P.transformationKineticsModeled

theorem phase_diagram_closed_from_evidence
    (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.equilibriumPhasesIdentifiedClosed
    (And.intro E.phaseBoundariesMappedClosed
      (And.intro E.gibbsFreeEnergyMinimizedClosed
        (And.intro E.stabilityCriteriaMetClosed
          E.transformationKineticsModeledClosed)))

end MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean
end HautevilleHouse