import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean

structure BravaisLatticePackage where
  unitCell : Type u
  symmetryGroup : Type v
  bravaisClass : String
  latticeParameters : Prop

structure BravaisLatticeEvidence (B : BravaisLatticePackage) where
  unitCellClosed : B.unitCell
  symmetryGroupClosed : B.symmetryGroup
  latticeParametersClosed : B.latticeParameters

def BravaisLatticeClosed (B : BravaisLatticePackage) : Prop :=
  B.unitCell ∧ B.symmetryGroup ∧ B.latticeParameters

theorem bravais_lattice_closed_from_evidence (B : BravaisLatticePackage) (E : BravaisLatticeEvidence B) :
    BravaisLatticeClosed B := by
  exact And.intro E.unitCellClosed (And.intro E.symmetryGroupClosed E.latticeParametersClosed)

end MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean
end HautevilleHouse