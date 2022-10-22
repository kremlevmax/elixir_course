width = IO.gets("Enter width: \n")
height = IO.gets("Enter hieght: \n")
{width_number, "\n"} = Float.parse(width)
{height_number, "\n"} = Float.parse(height)

IO.puts("Area is equal to #{width_number * height_number}")
