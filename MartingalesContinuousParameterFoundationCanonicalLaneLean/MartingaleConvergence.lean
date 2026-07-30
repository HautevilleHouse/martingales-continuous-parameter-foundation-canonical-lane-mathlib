import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MartingalesContinuousParameterFoundationCanonicalLaneLean

structure MartingaleConvergencePackage where
  convergenceInProbability : Prop
  almostSureConvergence : Prop
  LpConvergence : Prop

def MartingaleConvergenceClosed (M : MartingaleConvergencePackage) : Prop :=
  M.convergenceInProbability ∧ M.almostSureConvergence ∧ M.LpConvergence

theorem martingale_convergence_closed (M : MartingaleConvergencePackage)
    (h1 : M.convergenceInProbability) (h2 : M.almostSureConvergence) (h3 : M.LpConvergence) :
    MartingaleConvergenceClosed M := by
  exact And.intro h1 (And.intro h2 h3)

end MartingalesContinuousParameterFoundationCanonicalLaneLean
end HautevilleHouse