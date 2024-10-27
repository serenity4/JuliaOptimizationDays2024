using Demo1

x = π/4

@show sin(x)
macroexpand(Main, :(@show sin(x))) # same as `@macroexpand @show sin(x)`

@show_naive sin(x)
@macroexpand @show_naive sin(x)

@show_escaped sin(x)
@macroexpand @show_escaped sin(x)

@show_correct sin(x)
@macroexpand @show_correct sin(x)
