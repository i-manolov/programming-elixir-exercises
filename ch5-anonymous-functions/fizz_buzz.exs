fizz_word = fn
  0, 0, _ ->  "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, a -> a
end

# IO.puts fizz_word.(0, 0, "bar")
# IO.puts fizz_word.(0, "foo", "bar")
# IO.puts fizz_word.("test", "me", "bar")

fizz_buzz = fn n -> fizz_word.(rem(n, 3), rem(n, 5), n)  end

IO.puts fizz_buzz.(10)
IO.puts fizz_buzz.(11)
IO.puts fizz_buzz.(12)
IO.puts fizz_buzz.(13)
IO.puts fizz_buzz.(14)
IO.puts fizz_buzz.(15)
IO.puts fizz_buzz.(16)

