puts "Enter a card number:"
card_input = gets.chomp
numbers = card_input.split(//)

doubled = numbers.map.with_index do |num, index|
  if index.even?
    num.to_i * 2
  else
    num.to_i
  end
end

summed = doubled.map do |num|
  if    num > 9
        num - 9
  else  num < 9
        num
  end
end

total_num = summed.inject(:+)

if total_num % 10 == 0
  puts "#{card_input} is a valid credit card number!!"
else
  puts "The credit card number you entered: #{card_input} is invalid"
end
  # Valid: 5541808923795240, 4024007136512380, 6011797668867828   Ran these numbers, and they are valid
  # Invalid: 5541801923795240, 4024007106512380, 6011797668868728 Ran these, and they are invalid
