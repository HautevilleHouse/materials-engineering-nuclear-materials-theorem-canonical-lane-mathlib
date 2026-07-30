import MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NuclearMaterialsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsEngineeringNuclearMaterialsTheoremCanonicalLaneLean
end HautevilleHouse