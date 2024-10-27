macro show_correct(ex)
  quote
    x = $(esc(ex))
    println($(string(ex)), " = ", x)
    x
  end
end
