import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreekRomanMathematicsCanonicalLaneLean

def ConstrainedGreekRomanClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_greek_roman_endgame (A : AdmissibleClass) :
    ConstrainedGreekRomanClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GreekRomanMathematicsCanonicalLaneLean
end HautevilleHouse
