module Demo2

using PrecompileTools: @compile_workload, @recompile_invalidations

@recompile_invalidations begin
  using Meshes
end

# It is crucial to put code to be precompiled in a function defined in YOUR package,
# if you precompile functions from other packages.
function workload()
  outer = Ring((0, 0), (0.4, 0.7), (1, 0.2), (0.8, -0.5), (0, 0))
  inner = Ring((0.1, 0.1), (0.3, 0.2), (0.1, 0.1))
  poly = PolyArea([outer, inner])
  simplexify(poly)
end

@compile_workload begin
  workload()
end

end # module
