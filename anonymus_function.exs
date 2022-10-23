age = IO.gets("What's your age? \n")

check_age = fn(age) ->
  case (Float.parse(age)) do
    {age, _} when age < 18  -> "You are not allowed to vote"
    {age, _} when age < 25 -> "You can vote"
    {_age, _} -> "You can vote and be a president also"
    :error -> "Invalid input"
  end
end

IO.puts(check_age.(age))
