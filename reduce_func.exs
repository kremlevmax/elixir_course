votes = [
  %{district: 1, candidate: 1, votes: 230},
  %{district: 1, candidate: 2, votes: 122},
  %{district: 1, candidate: 3, votes: 14},
  %{district: 2, candidate: 1, votes: 324},
  %{district: 2, candidate: 2, votes: 222},
  %{district: 2, candidate: 3, votes: 80}
]

second_district = Enum.filter(votes, &(&1.district in [1]))
|> Enum.map(&Map.take(&1, [:candidate, :votes]))
IO.inspect(second_district)


## Commit check
