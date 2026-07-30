import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean

structure CrystalStructurePackage where
  latticeType : Type u
  basisVectors : Type v
  symmetryGroup : Type w
  bravaisLatticeClassified : Prop
  primitiveCellVolumeComputed : Prop
  symmetryOperationsEnumerated : Prop

structure CrystalStructureEvidence (C : CrystalStructurePackage) where
  bravaisLatticeClassifiedClosed : C.bravaisLatticeClassified
  primitiveCellVolumeComputedClosed : C.primitiveCellVolumeComputed
  symmetryOperationsEnumeratedClosed : C.symmetryOperationsEnumerated

def CrystalStructureClosed (C : CrystalStructurePackage) : Prop :=
  C.bravaisLatticeClassified ∧ C.primitiveCellVolumeComputed ∧ C.symmetryOperationsEnumerated

theorem crystal_structure_closed_from_evidence (C : CrystalStructurePackage) (E : CrystalStructureEvidence C) : CrystalStructureClosed C := by
  exact And.intro E.bravaisLatticeClassifiedClosed (And.intro E.primitiveCellVolumeComputedClosed E.symmetryOperationsEnumeratedClosed)

end MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean
end HautevilleHouse