import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean

structure CrystallographyPackage where
  crystalSystem : Type u
  bravaisLattice : Type v
  spaceGroup : Type w
  latticeParameters : Prop
  atomicBasis : Prop
  symmetryOperations : Prop
  latticeParametersTerm : latticeParameters
  atomicBasisTerm : atomicBasis
  symmetryOperationsTerm : symmetryOperations

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeParametersClosed : C.latticeParameters
  atomicBasisClosed : C.atomicBasis
  symmetryOperationsClosed : C.symmetryOperations

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeParameters ∧ C.atomicBasis ∧ C.symmetryOperations

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.latticeParametersClosed (And.intro E.atomicBasisClosed E.symmetryOperationsClosed)

end MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean
end HautevilleHouse