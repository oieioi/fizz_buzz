# ruby fizz_buzz.rb
def get_fizz_buzz(num)
  return nil        unless num.is_a? Numeric
  return "FizzBuzz" if     num % 15 == 0
  return "Fizz"     if     num % 3  == 0
  return "Buzz"     if     num % 5  == 0
  return num
end

ret = (1..100).map {|num| get_fizz_buzz num}
p ret.join ','
