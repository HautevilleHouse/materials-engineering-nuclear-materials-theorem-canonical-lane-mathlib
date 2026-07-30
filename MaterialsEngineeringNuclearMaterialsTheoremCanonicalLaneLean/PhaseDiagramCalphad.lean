import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  phaseField : Type u
  compositionRange : Prop
  temperatureRange : Prop
  phaseBoundaryLocus : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  compositionRangeClosed : P.compositionRange
  temperatureRangeClosed : P.temperatureRange
  phaseBoundaryLocusClosed : P.phaseBoundaryLocus

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.compositionRange ∧ P.temperatureRange ∧ P.phaseBoundaryLocus

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.compositionRangeClosed (And.intro E.temperatureRangeClosed E.phaseBoundaryLocusClosed)

end MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean
end HautevilleHouse