defmodule Utils do
  def array_sum(array) do
    get_sum(array, 0)
  end

  defp get_sum([head | tail], total) do # Recursive case
    get_sum(tail, total+head)
  end

  defp get_sum([], total) do # Base case
    total
  end
end
