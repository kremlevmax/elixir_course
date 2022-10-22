age = IO.gets("Enter your age: \n")
{age, _} = Integer.parse(age)

message =
  cond do
    age < 18 -> "You can't vote yet"
    age < 25 -> "You can vote"
    true -> "You can vote and can be a president also"
  end

  IO.puts(message)
