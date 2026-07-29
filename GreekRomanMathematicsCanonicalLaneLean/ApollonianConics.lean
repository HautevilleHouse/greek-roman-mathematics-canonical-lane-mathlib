import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreekRomanMathematicsCanonicalLaneLean

structure ApollonianConicsPackage where
  coneSectionDefinitions : Prop
  parabolaProperties : Prop
  ellipseProperties : Prop
  hyperbolaProperties : Prop
  tangentAndDiameterRelations : Prop

structure ApollonianConicsEvidence (A : ApollonianConicsPackage) where
  coneSectionDefinitionsClosed : A.coneSectionDefinitions
  parabolaPropertiesClosed : A.parabolaProperties
  ellipsePropertiesClosed : A.ellipseProperties
  hyperbolaPropertiesClosed : A.hyperbolaProperties
  tangentAndDiameterRelationsClosed : A.tangentAndDiameterRelations

def ApollonianConicsClosed (A : ApollonianConicsPackage) : Prop :=
  A.coneSectionDefinitions ∧ A.parabolaProperties ∧ A.ellipseProperties ∧ A.hyperbolaProperties ∧ A.tangentAndDiameterRelations

theorem apollonian_conics_closed_from_evidence (A : ApollonianConicsPackage)
    (Ev : ApollonianConicsEvidence A) : ApollonianConicsClosed A := by
  exact And.intro Ev.coneSectionDefinitionsClosed (And.intro Ev.parabolaPropertiesClosed 
    (And.intro Ev.ellipsePropertiesClosed (And.intro Ev.hyperbolaPropertiesClosed Ev.tangentAndDiameterRelationsClosed)))

end GreekRomanMathematicsCanonicalLaneLean
end HautevilleHouse