import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreekRomanMathematicsCanonicalLaneLean

structure GreekAstronomyPackage where
  celestialSphereModel : Type u
  eccentricCircles : Prop
  epicycleDeferent : Prop
  planetaryHypothesis : Prop
  observationalDataConsistent : Prop

structure GreekAstronomyEvidence (A : GreekAstronomyPackage) where
  eccentricCirclesClosed : A.eccentricCircles
  epicycleDeferentClosed : A.epicycleDeferent
  planetaryHypothesisClosed : A.planetaryHypothesis
  observationalDataConsistentClosed : A.observationalDataConsistent

def GreekAstronomyClosed (A : GreekAstronomyPackage) : Prop :=
  A.eccentricCircles ∧ A.epicycleDeferent ∧ A.planetaryHypothesis ∧ A.observationalDataConsistent

theorem greek_astronomy_closed_from_evidence (A : GreekAstronomyPackage)
    (E : GreekAstronomyEvidence A) : GreekAstronomyClosed A := by
  exact And.intro E.eccentricCirclesClosed
    (And.intro E.epicycleDeferentClosed
      (And.intro E.planetaryHypothesisClosed E.observationalDataConsistentClosed))

end GreekRomanMathematicsCanonicalLaneLean
end HautevilleHouse