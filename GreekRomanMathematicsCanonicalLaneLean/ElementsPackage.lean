import HautevilleHouse.GreekRomanMathematicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GreekRomanMathematicsCanonicalLaneLean

structure ElementsPackage where
  definitionsClassified : Prop
  commonNotionsEnumerated : Prop
  propositionsProved : Prop
  logicalStructureExplicit : Prop

structure ElementsEvidence (E : ElementsPackage) where
  definitionsClassifiedClosed : E.definitionsClassified
  commonNotionsEnumeratedClosed : E.commonNotionsEnumerated
  propositionsProvedClosed : E.propositionsProved
  logicalStructureExplicitClosed : E.logicalStructureExplicit

def ElementsClosed (E : ElementsPackage) : Prop :=
  E.definitionsClassified ∧ E.commonNotionsEnumerated ∧
  E.propositionsProved ∧ E.logicalStructureExplicit

theorem elements_closed_from_evidence (E : ElementsPackage) (Ev : ElementsEvidence E) : ElementsClosed E := by
  exact And.intro Ev.definitionsClassifiedClosed
    (And.intro Ev.commonNotionsEnumeratedClosed
      (And.intro Ev.propositionsProvedClosed Ev.logicalStructureExplicitClosed))

end GreekRomanMathematicsCanonicalLaneLean
end HautevilleHouse