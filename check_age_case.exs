age = IO.gets("Enter your age: \n")

message = case Float.parse(age) do
  {age, _} when age < 18  -> "You are to young to vote"
  {age, _} when age < 25 -> "You are allowed to vote"
  {_age, _} -> "You can vote and can become the president yourself"
  :error -> "Invalid input"
end

IO.puts(message)
