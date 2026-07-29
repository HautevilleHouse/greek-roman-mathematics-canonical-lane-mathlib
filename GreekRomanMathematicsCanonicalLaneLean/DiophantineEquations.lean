import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreekRomanMathematicsCanonicalLaneLean

structure DiophantineEquationsPackage where
  indeterminateEquations : Prop
  arithmeticaMethods : Prop
  integerSolutions : Prop
  polygonalNumbers : Prop
  geometricAlgebra : Prop

structure DiophantineEquationsEvidence (D : DiophantineEquationsPackage) where
  indeterminateEquationsClosed : D.indeterminateEquations
  arithmeticaMethodsClosed : D.arithmeticaMethods
  integerSolutionsClosed : D.integerSolutions
  polygonalNumbersClosed : D.polygonalNumbers
  geometricAlgebraClosed : D.geometricAlgebra

def DiophantineEquationsClosed (D : DiophantineEquationsPackage) : Prop :=
  D.indeterminateEquations ∧ D.arithmeticaMethods ∧ D.integerSolutions ∧ D.polygonalNumbers ∧ D.geometricAlgebra

theorem diophantine_equations_closed_from_evidence (D : DiophantineEquationsPackage)
    (Ev : DiophantineEquationsEvidence D) : DiophantineEquationsClosed D := by
  exact And.intro Ev.indeterminateEquationsClosed (And.intro Ev.arithmeticaMethodsClosed 
    (And.intro Ev.integerSolutionsClosed (And.intro Ev.polygonalNumbersClosed Ev.geometricAlgebraClosed)))

end GreekRomanMathematicsCanonicalLaneLean
end HautevilleHouse