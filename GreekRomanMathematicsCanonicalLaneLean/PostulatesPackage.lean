import HautevilleHouse.GreekRomanMathematicsCanonicalLaneLean.ElementsPackage

namespace HautevilleHouse
namespace GreekRomanMathematicsCanonicalLaneLean

structure PostulatesPackage {E : ElementsPackage} where
  postulateOne : Prop
  postulateTwo : Prop
  postulateThree : Prop
  postulateFour : Prop
  postulateFive : Prop

structure PostulatesEvidence {E : ElementsPackage} (P : PostulatesPackage E) where
  postulateOneClosed : P.postulateOne
  postulateTwoClosed : P.postulateTwo
  postulateThreeClosed : P.postulateThree
  postulateFourClosed : P.postulateFour
  postulateFiveClosed : P.postulateFive

def PostulatesClosed {E : ElementsPackage} (P : PostulatesPackage E) : Prop :=
  P.postulateOne ∧ P.postulateTwo ∧ P.postulateThree ∧ P.postulateFour ∧ P.postulateFive

theorem postulates_closed_from_evidence {E : ElementsPackage} (P : PostulatesPackage E) (Ev : PostulatesEvidence P) : PostulatesClosed P := by
  exact And.intro Ev.postulateOneClosed
    (And.intro Ev.postulateTwoClosed
      (And.intro Ev.postulateThreeClosed
        (And.intro Ev.postulateFourClosed Ev.postulateFiveClosed)))

end GreekRomanMathematicsCanonicalLaneLean
end HautevilleHouse