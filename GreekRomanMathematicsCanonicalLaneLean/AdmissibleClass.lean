import GreekRomanMathematicsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GreekRomanMathematicsCanonicalLaneLean

structure AdmissibleClass where
  object : GreekRomanMathematicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GreekRomanMathematicsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GreekRomanMathematicsCanonicalLaneLean
end HautevilleHouse
