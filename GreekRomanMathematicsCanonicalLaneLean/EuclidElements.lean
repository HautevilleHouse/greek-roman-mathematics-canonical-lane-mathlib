import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreekRomanMathematicsCanonicalLaneLean

structure EuclidElementsPackage where
  definitions : List String
  postulates : List String
  commonNotions : List String
  propositions : List String
  logicSystem : Prop
  logicSystemTerm : logicSystem

structure EuclidElementsEvidence (E : EuclidElementsPackage) where
  definitionsClosed : E.definitions.length = 131
  postulatesClosed : E.postulates.length = 5
  commonNotionsClosed : E.commonNotions.length = 5
  propositionsClosed : E.propositions.length = 465

end GreekRomanMathematicsCanonicalLaneLean
end HautevilleHouse