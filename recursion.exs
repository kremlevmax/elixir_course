defmodule Utils do
  def array_sum(array) do
    get_sum(array, 0)
  end

  defp get_sum([head | tail], total) do

    get_sum(tail, total+head)
  end

  defp get_sum([], total) do
    total
  end
end
