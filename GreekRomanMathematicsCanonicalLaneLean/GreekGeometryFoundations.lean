import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreekRomanMathematicsCanonicalLaneLean

structure GreekGeometryFoundationsPackage where
  axiomaticMethod : Prop
  geometricConstructions : Prop
  ratioProportion : Prop
  numberTheory : Prop
  infinityContinuity : Prop

structure GreekGeometryFoundationsEvidence (G : GreekGeometryFoundationsPackage) where
  axiomaticMethodClosed : G.axiomaticMethod
  geometricConstructionsClosed : G.geometricConstructions
  ratioProportionClosed : G.ratioProportion
  numberTheoryClosed : G.numberTheory
  infinityContinuityClosed : G.infinityContinuity

def GreekGeometryFoundationsClosed (G : GreekGeometryFoundationsPackage) : Prop :=
  G.axiomaticMethod ∧ G.geometricConstructions ∧ G.ratioProportion ∧ G.numberTheory ∧ G.infinityContinuity

theorem greek_geometry_foundations_closed_from_evidence (G : GreekGeometryFoundationsPackage) (E : GreekGeometryFoundationsEvidence G) : GreekGeometryFoundationsClosed G := by
  exact And.intro E.axiomaticMethodClosed (And.intro E.geometricConstructionsClosed (And.intro E.ratioProportionClosed (And.intro E.numberTheoryClosed E.infinityContinuityClosed)))

end GreekRomanMathematicsCanonicalLaneLean
end HautevilleHouse