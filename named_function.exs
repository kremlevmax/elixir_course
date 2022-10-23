age = IO.gets("Whats your age? \n")

defmodule Voter do
  def check_age(age) do
    case Integer.parse(age) do
     {age, _} when age < 18  -> "You are not allowed yo vote yet"
     {age, _} when age < 25 -> "You can vote"
     {_age, _} -> "You can vote and even be a president"
     :error -> "Invalid input"
    end
  end
end

message = Voter.check_age(age)
IO.puts(message)
