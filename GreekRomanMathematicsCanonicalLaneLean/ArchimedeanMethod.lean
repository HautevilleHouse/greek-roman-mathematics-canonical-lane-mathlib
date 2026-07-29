import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreekRomanMathematicsCanonicalLaneLean

structure ArchimedeanMethodPackage where
  equilibriumMethod : Prop
  geometricConstructions : Prop
  quadratureOfParabola : Prop
  sphereAndCylinder : Prop
  measurementOfCircle : Prop

structure ArchimedeanMethodEvidence (A : ArchimedeanMethodPackage) where
  equilibriumMethodClosed : A.equilibriumMethod
  geometricConstructionsClosed : A.geometricConstructions
  quadratureOfParabolaClosed : A.quadratureOfParabola
  sphereAndCylinderClosed : A.sphereAndCylinder
  measurementOfCircleClosed : A.measurementOfCircle

def ArchimedeanMethodClosed (A : ArchimedeanMethodPackage) : Prop :=
  A.equilibriumMethod ∧ A.geometricConstructions ∧ A.quadratureOfParabola ∧ A.sphereAndCylinder ∧ A.measurementOfCircle

theorem archimedean_method_closed_from_evidence (A : ArchimedeanMethodPackage)
    (Ev : ArchimedeanMethodEvidence A) : ArchimedeanMethodClosed A := by
  exact And.intro Ev.equilibriumMethodClosed (And.intro Ev.geometricConstructionsClosed 
    (And.intro Ev.quadratureOfParabolaClosed (And.intro Ev.sphereAndCylinderClosed Ev.measurementOfCircleClosed)))

end GreekRomanMathematicsCanonicalLaneLean
end HautevilleHouse