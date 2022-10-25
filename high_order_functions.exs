tally = %{ winnie: 1}

increment = fn(amount) ->
  fn(number) -> number + amount end
end

tally = Map.update(tally, :winnie, 1, increment.(10))

IO.puts(tally[:winnie])
