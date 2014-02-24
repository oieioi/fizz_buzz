fizzBuzz = (n) ->
  if n % 15 is 0 then return "FizzBuzz"
  if n % 3  is 0 then return "Fizz"
  if n % 5  is 0 then return "Buzz"
  return "#{n}"

ret = (for n in [1..100] then fizzBuzz n)
console.log ret.join ","
