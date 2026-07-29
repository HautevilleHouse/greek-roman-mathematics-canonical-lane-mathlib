import HautevilleHouse.GreekRomanMathematicsCanonicalLaneLean.ConstructionsPackage

namespace HautevilleHouse
namespace GreekRomanMathematicsCanonicalLaneLean

structure PrimeNumberPackage {E : ElementsPackage} {P : PostulatesPackage E} {C : ConstructionsPackage E P} where
  infinitudeOfPrimes : Prop
  sieveOfEratosthenes : Prop
  euclideanAlgorithm : Prop
  fundamentalTheorem : Prop

structure PrimeNumberEvidence {E : ElementsPackage} {P : PostulatesPackage E} {C : ConstructionsPackage E P} (N : PrimeNumberPackage E P C) where
  infinitudeOfPrimesClosed : N.infinitudeOfPrimes
  sieveOfEratosthenesClosed : N.sieveOfEratosthenes
  euclideanAlgorithmClosed : N.euclideanAlgorithm
  fundamentalTheoremClosed : N.fundamentalTheorem

def PrimeNumberClosed {E : ElementsPackage} {P : PostulatesPackage E} {C : ConstructionsPackage E P} (N : PrimeNumberPackage E P C) : Prop :=
  N.infinitudeOfPrimes ∧ N.sieveOfEratosthenes ∧ N.euclideanAlgorithm ∧ N.fundamentalTheorem

theorem prime_number_closed_from_evidence {E : ElementsPackage} {P : PostulatesPackage E} {C : ConstructionsPackage E P} (N : PrimeNumberPackage E P C) (Ev : PrimeNumberEvidence N) : PrimeNumberClosed N := by
  exact And.intro Ev.infinitudeOfPrimesClosed
    (And.intro Ev.sieveOfEratosthenesClosed
      (And.intro Ev.euclideanAlgorithmClosed Ev.fundamentalTheoremClosed))

end GreekRomanMathematicsCanonicalLaneLean
end HautevilleHouse