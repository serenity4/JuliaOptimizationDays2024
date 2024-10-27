macro show_naive(ex)
  quote
    x = $ex
    println($(string(ex)), " = ", x)
    x
  end
end
