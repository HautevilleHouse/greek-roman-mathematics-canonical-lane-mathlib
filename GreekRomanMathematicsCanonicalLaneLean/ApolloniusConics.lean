import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreekRomanMathematicsCanonicalLaneLean

structure ApolloniusConicsPackage where
  conicSections : Prop
  ellipse : Prop
  parabola : Prop
  hyperbola : Prop
  tangentProperties : Prop

structure ApolloniusConicsEvidence (A : ApolloniusConicsPackage) where
  conicSectionsClosed : A.conicSections
  ellipseClosed : A.ellipse
  parabolaClosed : A.parabola
  hyperbolaClosed : A.hyperbola
  tangentPropertiesClosed : A.tangentProperties

def ApolloniusConicsClosed (A : ApolloniusConicsPackage) : Prop :=
  A.conicSections ∧ A.ellipse ∧ A.parabola ∧ A.hyperbola ∧ A.tangentProperties

theorem apollonius_conics_closed_from_evidence (A : ApolloniusConicsPackage) (E : ApolloniusConicsEvidence A) : ApolloniusConicsClosed A := by
  exact And.intro E.conicSectionsClosed (And.intro E.ellipseClosed (And.intro E.parabolaClosed (And.intro E.hyperbolaClosed E.tangentPropertiesClosed)))

end GreekRomanMathematicsCanonicalLaneLean
end HautevilleHouse