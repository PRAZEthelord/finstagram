(1..100).each do |num|
  if num % 3 == 0 && num % 5 == 0
    p 'fizzbuzz'

  elsif num % 3 == 0
  p 'fizz'

  elsif num % 5 == 0
  p 'buzz'

  else
  p num

  end
end