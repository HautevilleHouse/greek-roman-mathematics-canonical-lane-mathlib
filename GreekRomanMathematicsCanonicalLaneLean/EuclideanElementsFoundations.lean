import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreekRomanMathematicsCanonicalLaneLean

structure EuclideanElementsPackage where
  definitions : Prop
  postulates : Prop
  commonNotions : Prop
  propositions : Prop
  logicalDeduction : Prop

structure EuclideanElementsEvidence (E : EuclideanElementsPackage) where
  definitionsClosed : E.definitions
  postulatesClosed : E.postulates
  commonNotionsClosed : E.commonNotions
  propositionsClosed : E.propositions
  logicalDeductionClosed : E.logicalDeduction

def EuclideanElementsClosed (E : EuclideanElementsPackage) : Prop :=
  E.definitions ∧ E.postulates ∧ E.commonNotions ∧ E.propositions ∧ E.logicalDeduction

theorem euclidean_elements_closed_from_evidence (E : EuclideanElementsPackage) 
    (Ev : EuclideanElementsEvidence E) : EuclideanElementsClosed E := by
  exact And.intro Ev.definitionsClosed (And.intro Ev.postulatesClosed (And.intro Ev.commonNotionsClosed (And.intro Ev.propositionsClosed Ev.logicalDeductionClosed)))

end GreekRomanMathematicsCanonicalLaneLean
end HautevilleHouse