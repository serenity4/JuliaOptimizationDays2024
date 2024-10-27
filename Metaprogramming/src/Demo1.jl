module Demo1

include("naive.jl")
include("escaped.jl")
include("correct.jl")

export @show_naive, @show_escaped, @show_correct, @show_correct_verbose, @show_with_source, @show_replace_asin_with_acos

end # module
