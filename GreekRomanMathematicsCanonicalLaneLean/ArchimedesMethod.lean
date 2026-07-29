import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreekRomanMathematicsCanonicalLaneLean

structure ArchimedesMethodPackage where
  areaCircle : Prop
  volumeSphere : Prop
  leverLaw : Prop
  hydrostaticPrinciple : Prop
  exhaustionTechnique : Prop

structure ArchimedesMethodEvidence (A : ArchimedesMethodPackage) where
  areaCircleClosed : A.areaCircle
  volumeSphereClosed : A.volumeSphere
  leverLawClosed : A.leverLaw
  hydrostaticPrincipleClosed : A.hydrostaticPrinciple
  exhaustionTechniqueClosed : A.exhaustionTechnique

def ArchimedesMethodClosed (A : ArchimedesMethodPackage) : Prop :=
  A.areaCircle ∧ A.volumeSphere ∧ A.leverLaw ∧ A.hydrostaticPrinciple ∧ A.exhaustionTechnique

theorem archimedes_method_closed_from_evidence (A : ArchimedesMethodPackage) (E : ArchimedesMethodEvidence A) : ArchimedesMethodClosed A := by
  exact And.intro E.areaCircleClosed (And.intro E.volumeSphereClosed (And.intro E.leverLawClosed (And.intro E.hydrostaticPrincipleClosed E.exhaustionTechniqueClosed)))

end GreekRomanMathematicsCanonicalLaneLean
end HautevilleHouse