width = IO.gets("Enter width: \n")
height = IO.gets("Enter hieght: \n")
{width_number, "\n"} = Integer.parse(width)
{height_number, "\n"} = Integer.parse(height)

IO.puts(width_number * height_number)
