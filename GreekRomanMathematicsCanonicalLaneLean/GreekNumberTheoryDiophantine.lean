import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreekRomanMathematicsCanonicalLaneLean

structure DiophantineEquationPackage where
  polynomialEquation : Prop
  integerSolutions : Prop
  classificationMethod : Prop
  parametricFamilies : Prop

structure DiophantineEquationEvidence (D : DiophantineEquationPackage) where
  polynomialEquationClosed : D.polynomialEquation
  integerSolutionsClosed : D.integerSolutions
  classificationMethodClosed : D.classificationMethod
  parametricFamiliesClosed : D.parametricFamilies

def DiophantineEquationClosed (D : DiophantineEquationPackage) : Prop :=
  D.polynomialEquation ∧ D.integerSolutions ∧ D.classificationMethod ∧ D.parametricFamilies

theorem diophantine_equation_closed_from_evidence (D : DiophantineEquationPackage)
    (E : DiophantineEquationEvidence D) : DiophantineEquationClosed D := by
  exact And.intro E.polynomialEquationClosed
    (And.intro E.integerSolutionsClosed
      (And.intro E.classificationMethodClosed E.parametricFamiliesClosed))

end GreekRomanMathematicsCanonicalLaneLean
end HautevilleHouse