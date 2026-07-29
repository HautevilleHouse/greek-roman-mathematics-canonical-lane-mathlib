import GreekRomanMathematicsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GreekRomanMathematicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GreekRomanMathematicsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GreekRomanMathematicsCanonicalLaneLean
end HautevilleHouse
