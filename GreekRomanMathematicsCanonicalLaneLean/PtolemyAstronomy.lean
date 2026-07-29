import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreekRomanMathematicsCanonicalLaneLean

structure PtolemyAstronomyPackage where
  epicyclicModel : Prop
  chordTable : Prop
  sphericalTrigonometry : Prop
  planetaryTheory : Prop
  observationalCalibration : Prop

structure PtolemyAstronomyEvidence (P : PtolemyAstronomyPackage) where
  epicyclicModelClosed : P.epicyclicModel
  chordTableClosed : P.chordTable
  sphericalTrigonometryClosed : P.sphericalTrigonometry
  planetaryTheoryClosed : P.planetaryTheory
  observationalCalibrationClosed : P.observationalCalibration

def PtolemyAstronomyClosed (P : PtolemyAstronomyPackage) : Prop :=
  P.epicyclicModel ∧ P.chordTable ∧ P.sphericalTrigonometry ∧
  P.planetaryTheory ∧ P.observationalCalibration

theorem ptolemy_astronomy_closed_from_evidence (P : PtolemyAstronomyPackage) (Ev : PtolemyAstronomyEvidence P) :
    PtolemyAstronomyClosed P := by
  exact And.intro Ev.epicyclicModelClosed
    (And.intro Ev.chordTableClosed
      (And.intro Ev.sphericalTrigonometryClosed
        (And.intro Ev.planetaryTheoryClosed Ev.observationalCalibrationClosed)))

end GreekRomanMathematicsCanonicalLaneLean
end HautevilleHouse