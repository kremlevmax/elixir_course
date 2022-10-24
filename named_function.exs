
defmodule Voter do
  @moduledoc """
  Module to process election information
  """

  @doc """
  Describes a voter eligibility based on an age

  ## Parameters
    - age: Voter's age - Integer or String
  Returns `String`

  ## Examples

    iex> Voter.check_age(17)
    "You are too young to vote"

    iex> Voter.check_age(19)
    "You are allowed to vote"

    iex> Voter.check_age(27)
    "You are allowed to vote and can be a president"

    iex> Voter.check_age(twenty)
    "Invalid input"
  """
  def check_voter(age) when is_binary(age) or is_integer(age) do
    check_age(age)
  end

  def check_voter(_age) do
    "Invalid input!"
  end

  defp check_age(age) when is_binary(age) do
    check_age(Integer.parse(age))
  end

  defp check_age({age, _}) do
    check_age(age)
  end

  defp check_age(age) when age < 18 do
    "You are too young to vote"
  end

  defp check_age(age) when age < 25 do
    "You are allowed to vote"
  end

  defp check_age(:error) do
    "Invalid input"
  end

  defp check_age(_age) do
    "You are allowed to vote and can be a president"
  end
end
