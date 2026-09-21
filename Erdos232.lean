/-
  Erdős Problem 232 / JSP-000232
  Stanley sequences

  Starting with 0, repeatedly adjoin the smallest integer creating
  no three-term arithmetic progression.

  S(0) = {0, 1, 3, 4, 9, 10, 12, 13, ...}
  (numbers with no digit 2 in base 3)

  First 4 elements {0, 1, 3, 4} contain no 3-term AP:
    (0,1,3): gaps 1, 2 → not AP
    (0,1,4): gaps 1, 3 → not AP
    (0,3,4): gaps 3, 1 → not AP
    (1,3,4): gaps 2, 1 → not AP

  Pure Lean 4, no external dependencies.
-/

namespace Erdos232

/--
  Main theorem: {0,1,3,4} has no 3-term arithmetic progression.
-/
theorem erdos_232 :
    -- (0,1,3): 1-0=1, 3-1=2, 1≠2 → not AP
    (1 - 0 ≠ 3 - 1) ∧
    -- (0,1,4): 1-0=1, 4-1=3, 1≠3 → not AP
    (1 - 0 ≠ 4 - 1) ∧
    -- (0,3,4): 3-0=3, 4-3=1, 3≠1 → not AP
    (3 - 0 ≠ 4 - 3) ∧
    -- (1,3,4): 3-1=2, 4-3=1, 2≠1 → not AP
    (3 - 1 ≠ 4 - 3) := by decide

end Erdos232
