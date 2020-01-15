index = 99
goal = 0
while index > goal
  puts "#{index} bottles of beer on the wall #{index} bottles of beer,
  you take one down pass it around #{index - 1} beers on the wall.."
  if index == 1
    puts "#{index} bottle of beer on the wall #{index} bottle of beer,
    you take one down pass it around, theres no more beers on the wall.."
  end

  index -= 1
end
