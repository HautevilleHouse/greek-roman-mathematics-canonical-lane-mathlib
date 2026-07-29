import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreekRomanMathematicsCanonicalLaneLean

structure DiophantineAnalysisPackage where
  indeterminateEquations : Prop
  integerSolutions : Prop
  methodOfLifting : Prop

structure DiophantineAnalysisEvidence (D : DiophantineAnalysisPackage) where
  indeterminateEquationsClosed : D.indeterminateEquations
  integerSolutionsClosed : D.integerSolutions
  methodOfLiftingClosed : D.methodOfLifting

def DiophantineAnalysisClosed (D : DiophantineAnalysisPackage) : Prop :=
  D.indeterminateEquations ∧ D.integerSolutions ∧ D.methodOfLifting

theorem diophantine_analysis_closed_from_evidence (D : DiophantineAnalysisPackage) (E : DiophantineAnalysisEvidence D) : DiophantineAnalysisClosed D := by
  exact And.intro E.indeterminateEquationsClosed (And.intro E.integerSolutionsClosed E.methodOfLiftingClosed)

end GreekRomanMathematicsCanonicalLaneLean
end HautevilleHouse