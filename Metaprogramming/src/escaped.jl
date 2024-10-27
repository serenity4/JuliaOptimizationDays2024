macro show_escaped(ex)
  esc(quote
    x = $ex
    println($(string(ex)), " = ", x)
    x
  end)
end
