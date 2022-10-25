defmodule Party do
  @mascots %{
    democratic: "donkey",
    republic: "elephant",
    libertarian: "statue",
    green: "plant",
    constitution: "eagle",
    whig: "owl"
  }

  @parties Map.keys(@mascots)

  def mascot_image(party, size \\ :normal)

  def mascot_image(party, size) when party in @parties do
    get_logo(mascot(party), size)
  end

  def mascot_image(_party, size), do: get_logo("other", size)

  defp mascot(party), do: @mascots[party]

  defp get_logo(mascot, :small), do: "#{mascot}_small.png"
  defp get_logo(mascot, _size), do: "#{mascot}_normal.png"


end
