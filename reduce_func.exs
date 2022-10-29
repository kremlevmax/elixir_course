votes = [
  %{district: 1, candidate: 1, votes: 230},
  %{district: 1, candidate: 2, votes: 122},
  %{district: 1, candidate: 3, votes: 14},
  %{district: 2, candidate: 1, votes: 324},
  %{district: 2, candidate: 2, votes: 222},
  %{district: 2, candidate: 3, votes: 80}
]

second_district = Enum.filter(votes, fn x -> x.district == 2 end)
IO.inspect(second_district)


## Commit check
