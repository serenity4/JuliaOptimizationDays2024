module Demo1

include("impl1.jl")
include("impl2.jl")
include("impl3.jl")

export @show_naive, @show_escaped, @show_correct

end # module
