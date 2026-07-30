import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean

structure CrystallographyPackage where
  bravaisLattice : Type u
  unitCellVolume : ℝ
  atomicPositions : List (ℝ × ℝ × ℝ)
  spaceGroupSymmetry : Prop
  xrayDiffractionPattern : Prop
  latticeParameters : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeDefined : C.bravaisLattice = C.bravaisLattice
  unitCellVolumePositive : C.unitCellVolume > 0
  atomicPositionsConsistent : C.atomicPositions.length > 0
  spaceGroupSymmetrySatisfied : C.spaceGroupSymmetry
  xrayDiffractionPatternIndexed : C.xrayDiffractionPattern
  latticeParametersMeasured : C.latticeParameters

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.spaceGroupSymmetry ∧ C.xrayDiffractionPattern ∧ C.latticeParameters

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.spaceGroupSymmetrySatisfied (And.intro E.xrayDiffractionPatternIndexed E.latticeParametersMeasured)

end MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean
end HautevilleHouse