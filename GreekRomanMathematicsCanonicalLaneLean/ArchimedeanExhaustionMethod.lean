import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreekRomanMathematicsCanonicalLaneLean

structure ExhaustionMethodPackage where
  inscribedPolygons : Prop
  circumscribedPolygons : Prop
  limitProcessDefined : Prop
  areaApproximationConverges : Prop
  volumeApproximationConverges : Prop

structure ExhaustionMethodEvidence (E : ExhaustionMethodPackage) where
  inscribedPolygonsClosed : E.inscribedPolygons
  circumscribedPolygonsClosed : E.circumscribedPolygons
  limitProcessDefinedClosed : E.limitProcessDefined
  areaApproximationConvergesClosed : E.areaApproximationConverges
  volumeApproximationConvergesClosed : E.volumeApproximationConverges

def ExhaustionMethodClosed (E : ExhaustionMethodPackage) : Prop :=
  E.inscribedPolygons ∧ E.circumscribedPolygons ∧ E.limitProcessDefined ∧
  E.areaApproximationConverges ∧ E.volumeApproximationConverges

theorem exhaustion_method_closed_from_evidence (E : ExhaustionMethodPackage)
    (Ev : ExhaustionMethodEvidence E) : ExhaustionMethodClosed E := by
  exact And.intro Ev.inscribedPolygonsClosed
    (And.intro Ev.circumscribedPolygonsClosed
      (And.intro Ev.limitProcessDefinedClosed
        (And.intro Ev.areaApproximationConvergesClosed Ev.volumeApproximationConvergesClosed)))

end GreekRomanMathematicsCanonicalLaneLean
end HautevilleHouse