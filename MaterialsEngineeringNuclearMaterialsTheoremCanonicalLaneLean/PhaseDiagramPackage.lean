import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  phaseRegions : Type u
  phaseBoundaries : Type v
  phaseRule : Prop
  invariantReactions : Prop
  phaseRuleTerm : phaseRule
  invariantReactionsTerm : invariantReactions

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseRuleClosed : P.phaseRule
  invariantReactionsClosed : P.invariantReactions

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseRule ∧ P.invariantReactions

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.phaseRuleClosed E.invariantReactionsClosed

end MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean
end HautevilleHouse