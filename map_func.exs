votes = [
  %{district: 1, candidate: 1, votes: 230},
  %{district: 1, candidate: 2, votes: 122},
  %{district: 1, candidate: 3, votes: 14},
  %{district: 2, candidate: 1, votes: 324},
  %{district: 2, candidate: 2, votes: 222},
  %{district: 2, candidate: 3, votes: 80}
]
total_votes = Enum.filter(votes, &(&1.candidate == 1)) |> Enum.map(&(&1.votes)) |> Enum.sum()
IO.inspect(Enum.filter(votes, &(&1.candidate == 1)) |> Enum.map(&(%{district: &1.district, votes: &1.votes})) )
IO.puts(total_votes)
