import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreekRomanMathematicsCanonicalLaneLean

structure EuclideanAlgorithmPackage where
  divisorChain : Type u
  quotientRemainderPair : divisorChain → divisorChain → divisorChain × divisorChain
  terminationCondition : divisorChain → Prop
  gcdDefined : divisorChain → divisorChain → divisorChain

structure EuclideanAlgorithmEvidence (E : EuclideanAlgorithmPackage) where
  divisionCorrect : ∀ a b : E.divisorChain, b ≠ 0 →
    let (q, r) := E.quotientRemainderPair a b
    a = q * b + r
  remainderLess : ∀ a b : E.divisorChain, b ≠ 0 →
    let (q, r) := E.quotientRemainderPair a b
    E.terminationCondition r
  gcdCorrect : ∀ a b g : E.divisorChain,
    E.gcdDefined a b = g → g ∣ a ∧ g ∣ b ∧ ∀ d : E.divisorChain, d ∣ a → d ∣ b → d ∣ g

def EuclideanAlgorithmClosed (E : EuclideanAlgorithmPackage) : Prop :=
  E.terminationCondition = (λ r => r = 0) ∧
  (E.quotientRemainderPair = λ a b => (0, a))

theorem euclidean_algorithm_closed_from_evidence
    (E : EuclideanAlgorithmPackage) (Ev : EuclideanAlgorithmEvidence E) :
    EuclideanAlgorithmClosed E := by
  rfl

end GreekRomanMathematicsCanonicalLaneLean
end HautevilleHouse
