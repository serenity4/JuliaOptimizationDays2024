macro show_naive(ex)
  @info "Calling `@show_naive`"
  quote
    x = $ex
    println($(string(ex)), " = ", x)
    x
  end
end
