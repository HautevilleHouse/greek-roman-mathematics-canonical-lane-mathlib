import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreekRomanMathematicsCanonicalLaneLean

structure PtolemyChordPackage where
  chordTable : Type u
  arcToChordRelation : Prop
  geometricChordLemma : Prop
  sineEquivalentDefined : Prop
  interpolationFormula : Prop

structure PtolemyChordEvidence (P : PtolemyChordPackage) where
  chordTableClosed : P.chordTable
  arcToChordRelationClosed : P.arcToChordRelation
  geometricChordLemmaClosed : P.geometricChordLemma
  sineEquivalentDefinedClosed : P.sineEquivalentDefined
  interpolationFormulaClosed : P.interpolationFormula

def PtolemyChordClosed (P : PtolemyChordPackage) : Prop :=
  P.chordTable ∧ P.arcToChordRelation ∧ P.geometricChordLemma ∧
  P.sineEquivalentDefined ∧ P.interpolationFormula

theorem ptolemy_chord_closed_from_evidence (P : PtolemyChordPackage)
    (E : PtolemyChordEvidence P) : PtolemyChordClosed P := by
  exact And.intro E.chordTableClosed
    (And.intro E.arcToChordRelationClosed
      (And.intro E.geometricChordLemmaClosed
        (And.intro E.sineEquivalentDefinedClosed E.interpolationFormulaClosed)))

end GreekRomanMathematicsCanonicalLaneLean
end HautevilleHouse