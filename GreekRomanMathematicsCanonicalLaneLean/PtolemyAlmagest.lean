import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreekRomanMathematicsCanonicalLaneLean

structure PtolemyAlmagestPackage where
  geocentricModel : Prop
  epicyclicTheory : Prop
  chordTable : Prop
  trigonometry : Prop
  planetaryTheory : Prop

structure PtolemyAlmagestEvidence (P : PtolemyAlmagestPackage) where
  geocentricModelClosed : P.geocentricModel
  epicyclicTheoryClosed : P.epicyclicTheory
  chordTableClosed : P.chordTable
  trigonometryClosed : P.trigonometry
  planetaryTheoryClosed : P.planetaryTheory

def PtolemyAlmagestClosed (P : PtolemyAlmagestPackage) : Prop :=
  P.geocentricModel ∧ P.epicyclicTheory ∧ P.chordTable ∧ P.trigonometry ∧ P.planetaryTheory

theorem ptolemy_almagest_closed_from_evidence (P : PtolemyAlmagestPackage) (E : PtolemyAlmagestEvidence P) : PtolemyAlmagestClosed P := by
  exact And.intro E.geocentricModelClosed (And.intro E.epicyclicTheoryClosed (And.intro E.chordTableClosed (And.intro E.trigonometryClosed E.planetaryTheoryClosed)))

end GreekRomanMathematicsCanonicalLaneLean
end HautevilleHouse