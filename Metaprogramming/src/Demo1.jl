module Demo1

include("naive.jl")
include("escaped.jl")
include("correct.jl")

export @show_naive, @show_escaped, @show_correct

end # module
