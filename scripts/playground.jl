using Demo1
using Test

function demo()
  x = rand()
  @assert 0 ≤ x ≤ 1
  @myshow x + 1
  x
end
