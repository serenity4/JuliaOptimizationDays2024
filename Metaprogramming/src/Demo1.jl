module Demo1

macro myshow(ex)
  println("Calling @myshow")
  quote
    x = $ex
    println($(string(ex)), " = ", x)
  end
end

macro myshow_escaped(ex)
  println("Calling @myshow_escaped")
  esc(quote
    x = $ex
    println($(string(ex)), " = ", x)
  end)
end

macro myshow_correct(ex)
  println("Calling @myshow_correct")
  quote
    x = $(esc(ex))
    println($(string(ex)), " = ", x)
  end
end

export @myshow, @myshow_escaped, @myshow_correct

end # module
