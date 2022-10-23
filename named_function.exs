age = IO.gets("Whats your age? \n")

defmodule Voter do
  def check_age(age) when is_binary(age) do
    check_age(Integer.parse(age))
    end

  def check_age({age, _}) do
    check_age(age)
  end

  def check_age(:error) do
    "Invalid input"
  end

  def check_age(age) when age < 18 do
    "You are too young to vote"
  end

  def check_age(age) when age < 25 do
    "You are allowed to vote"
  end

  def check_age(_age) do
    "You are allowed to vote and can be a president"
  end
end

message = Voter.check_age(age)
IO.puts(message)
