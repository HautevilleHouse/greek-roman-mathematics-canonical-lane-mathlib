import HautevilleHouse.GreekRomanMathematicsCanonicalLaneLean.PostulatesPackage

namespace HautevilleHouse
namespace GreekRomanMathematicsCanonicalLaneLean

structure ConstructionsPackage {E : ElementsPackage} {P : PostulatesPackage E} where
  straightedgeCompass : Prop
  constructibleNumbers : Prop
  angleBisection : Prop
  circleInscribed : Prop

structure ConstructionsEvidence {E : ElementsPackage} {P : PostulatesPackage E} (C : ConstructionsPackage E P) where
  straightedgeCompassClosed : C.straightedgeCompass
  constructibleNumbersClosed : C.constructibleNumbers
  angleBisectionClosed : C.angleBisection
  circleInscribedClosed : C.circleInscribed

def ConstructionsClosed {E : ElementsPackage} {P : PostulatesPackage E} (C : ConstructionsPackage E P) : Prop :=
  C.straightedgeCompass ∧ C.constructibleNumbers ∧ C.angleBisection ∧ C.circleInscribed

theorem constructions_closed_from_evidence {E : ElementsPackage} {P : PostulatesPackage E} (C : ConstructionsPackage E P) (Ev : ConstructionsEvidence C) : ConstructionsClosed C := by
  exact And.intro Ev.straightedgeCompassClosed
    (And.intro Ev.constructibleNumbersClosed
      (And.intro Ev.angleBisectionClosed Ev.circleInscribedClosed))

end GreekRomanMathematicsCanonicalLaneLean
end HautevilleHouse