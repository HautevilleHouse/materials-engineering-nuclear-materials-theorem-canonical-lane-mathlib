import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean

structure PhaseFieldModelPackage where
  orderParameter : Prop
  freeEnergyFunctional : Prop
  evolutionEquation : Prop
  precipitateGrowth : Prop

structure PhaseFieldModelEvidence (P : PhaseFieldModelPackage) where
  orderParameterClosed : P.orderParameter
  freeEnergyFunctionalClosed : P.freeEnergyFunctional
  evolutionEquationClosed : P.evolutionEquation
  precipitateGrowthClosed : P.precipitateGrowth

def PhaseFieldModelClosed (P : PhaseFieldModelPackage) : Prop :=
  P.orderParameter ∧ P.freeEnergyFunctional ∧ P.evolutionEquation ∧ P.precipitateGrowth

theorem phase_field_model_closed_from_evidence (P : PhaseFieldModelPackage) (E : PhaseFieldModelEvidence P) : PhaseFieldModelClosed P := by
  exact And.intro E.orderParameterClosed (And.intro E.freeEnergyFunctionalClosed (And.intro E.evolutionEquationClosed E.precipitateGrowthClosed))

end MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
