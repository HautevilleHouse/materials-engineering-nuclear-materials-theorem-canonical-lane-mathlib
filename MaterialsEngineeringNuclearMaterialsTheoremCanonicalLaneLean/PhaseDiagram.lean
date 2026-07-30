import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  phasesList : Type u
  phaseBoundaries : Type v
  gibbsFreeEnergy : Type w
  equilibriumPhasesIdentified : Prop
  phaseTransitionsClassified : Prop
  leverRuleApplied : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  equilibriumPhasesIdentifiedClosed : P.equilibriumPhasesIdentified
  phaseTransitionsClassifiedClosed : P.phaseTransitionsClassified
  leverRuleAppliedClosed : P.leverRuleApplied

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.equilibriumPhasesIdentified ∧ P.phaseTransitionsClassified ∧ P.leverRuleApplied

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.equilibriumPhasesIdentifiedClosed (And.intro E.phaseTransitionsClassifiedClosed E.leverRuleAppliedClosed)

end MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean
end HautevilleHouse