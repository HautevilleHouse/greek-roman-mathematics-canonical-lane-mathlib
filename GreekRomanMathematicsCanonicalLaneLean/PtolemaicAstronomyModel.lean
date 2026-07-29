import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GreekRomanMathematicsCanonicalLaneLean

structure PtolemaicAstronomyPackage where
  deferentEpicycleModel : Prop
  equantPoint : Prop
  planetaryOrbitCalculations : Prop
  starCatalog : Prop
  trigonometricTables : Prop

structure PtolemaicAstronomyEvidence (P : PtolemaicAstronomyPackage) where
  deferentEpicycleModelClosed : P.deferentEpicycleModel
  equantPointClosed : P.equantPoint
  planetaryOrbitCalculationsClosed : P.planetaryOrbitCalculations
  starCatalogClosed : P.starCatalog
  trigonometricTablesClosed : P.trigonometricTables

def PtolemaicAstronomyClosed (P : PtolemaicAstronomyPackage) : Prop :=
  P.deferentEpicycleModel ∧ P.equantPoint ∧ P.planetaryOrbitCalculations ∧ P.starCatalog ∧ P.trigonometricTables

theorem ptolemaic_astronomy_closed_from_evidence (P : PtolemaicAstronomyPackage)
    (Ev : PtolemaicAstronomyEvidence P) : PtolemaicAstronomyClosed P := by
  exact And.intro Ev.deferentEpicycleModelClosed (And.intro Ev.equantPointClosed 
    (And.intro Ev.planetaryOrbitCalculationsClosed (And.intro Ev.starCatalogClosed Ev.trigonometricTablesClosed)))

end GreekRomanMathematicsCanonicalLaneLean
end HautevilleHouse