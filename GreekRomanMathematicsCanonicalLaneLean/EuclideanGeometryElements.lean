import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreekRomanMathematicsCanonicalLaneLean

structure EuclideanPostulatePackage where
  parallelPostulate : Prop
  straightedgeCompass : Prop
  geometricConstructionAxioms : Prop
  congruencesClassified : Prop

structure EuclideanPostulateEvidence (E : EuclideanPostulatePackage) where
  parallelPostulateClosed : E.parallelPostulate
  straightedgeCompassClosed : E.straightedgeCompass
  geometricConstructionAxiomsClosed : E.geometricConstructionAxioms
  congruencesClassifiedClosed : E.congruencesClassified

def EuclideanPostulateClosed (E : EuclideanPostulatePackage) : Prop :=
  E.parallelPostulate ∧ E.straightedgeCompass ∧ E.geometricConstructionAxioms ∧ E.congruencesClassified

theorem euclidean_postulate_closed_from_evidence (E : EuclideanPostulatePackage)
    (Ev : EuclideanPostulateEvidence E) : EuclideanPostulateClosed E := by
  exact And.intro Ev.parallelPostulateClosed
    (And.intro Ev.straightedgeCompassClosed
      (And.intro Ev.geometricConstructionAxiomsClosed Ev.congruencesClassifiedClosed))

end GreekRomanMathematicsCanonicalLaneLean
end HautevilleHouse