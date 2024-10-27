# Inspecting compilation times.

using SnoopCompileCore
invalidations = @snoop_invalidations using Meshes
function f()
  outer = Ring((0, 0), (0.4, 0.7), (1, 0.2), (0.8, -0.5), (0, 0))
  inner = Ring((0.1, 0.1), (0.3, 0.2), (0.1, 0.1))
  poly = PolyArea([outer, inner])
  simplexify(poly)
end
tinf = @time @eval @snoop_inference f();
using SnoopCompile

trees = invalidation_trees(invalidations)
staletrees = precompile_blockers(trees, tinf)

using ProfileView
fg = flamegraph(tinf)
ProfileView.view(fg)
