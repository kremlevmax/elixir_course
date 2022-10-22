## Elixir Programming Language

### Help commands

`iex` - Start Elixir’s Interactive Shell  
`h` - Get Help info about function  
`i` - Variable Data Type Information

### Data Types

**1. Integers**  
`3`, `777`, `-2`, `0`, `1_000_000`

**2. Floats**  
`3.14`, `0.00000001`

**3. Atoms**  
An atom is a constant whose name is its value.
The booleans true and false are also the atoms :true and :false, respectively.
Names of modules in Elixir are also atoms.  
`:name`, `:gender`, `:status`

**4. Strings**
`"Let it be"``

```bash
iex(32)> "admin " <> "Max"
"admin Max"
```

--Pattern matching---
iex(34)> "check: " <> check_str = "check: 7"
"check: 7"

iex(35)> check_str
"7"

5. Lists
   [1, 2]
   List can contain mixed types of information

- List Concatenation
  [1, 2] ++ [3, 4, 1]
  [1, 2, 3, 4, 1]

- List Subtraction
  ["foo", :bar, 42] -- [42, "bar"]
  ["foo", :bar]

[1,2,2,3,2,3] -- [1,2,3,2]
[2, 3]

[2] -- [2.0]
[2]
[2.0] -- [2.0]
[]

6. Tuples
   Tuples are similar to lists, but are stored contiguously in memory.
   This makes accessing their length fast but modification expensive; the new tuple must be copied entirely to memory.
   {3.14, :pie, "Apple"}

   ---PATTERN MATCHING----
   my_tuple = {:add, [1, 2]}
   {:add, [1, 2]}

   iex(43)> {atom, [first, second]} = my_tuple
   {:add, [1, 2]}

   iex(44)> atom
   :add

   iex(45)> first
   1

7. Maps
   %{:name => "Max", "hello" => :world}

   iex(13)> newMap["hello"]
   :world

   Short syntax:
   %{name: "Max", hello: :world}

   {foo: "bar", hello: "world"}

   ---PATTERN MATCHING---
   iex(38)> coder = %{"name" => "Max", "language" => "Elixir"}
   %{"language" => "Elixir", "name" => "Max"}

   iex(39)> %{"name" => name, "language" => language} = coder
   %{"language" => "Elixir", "name" => "Max"}

   iex(40)> name
   "Max"

   iex(41)> language
   "Elixir"

8. Structs
   Structs are extensions built on top of maps that provide compile-time checks and default values.

iex> defmodule User do
...> defstruct name: "John", age: 27
...> end

iex> %User{}
%User{age: 27, name: "John"}
iex> %User{name: "Jane"}
%User{age: 27, name: "Jane"}
