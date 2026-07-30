import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure NuclearMaterialSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure NuclearAdmittedObject where
  space : NuclearMaterialSpace
  crystalStructure : Prop
  radiationResistance : Prop
  thermalConductivity : Prop
  conclusion : crystalStructure ∧ radiationResistance ∧ thermalConductivity

structure NuclearEndgameState where
  object : NuclearAdmittedObject

def NuclearWitnessClosed (O : NuclearAdmittedObject) : Prop :=
  O.crystalStructure ∧ O.radiationResistance ∧ O.thermalConductivity

end MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
