# using Demo2
using Meshes

function f()
  outer = Ring((0, 0), (0.4, 0.7), (1, 0.2), (0.8, -0.5), (0, 0))
  inner = Ring((0.1, 0.1), (0.3, 0.2), (0.1, 0.1))
  poly = PolyArea([outer, inner])
  simplexify(poly)
end

@time @eval f();
