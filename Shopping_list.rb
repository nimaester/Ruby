shopping_list = ["eggs", "milk", "bread"]

start = "What else would you like to do?\n
1) See list
2) Add to the list
3) Delete from the list
4) Exit \n\n"

puts "What would you like to do?\n
1) See list
2) Add to the list
3) Delete from the list
4) Exit \n\n"

while user_input = gets.chomp
puts "You chose option #{user_input} \n "

  case user_input
  when "1"
    puts "The items on your list are: "
    shopping_list.each { |item| puts "- #{item.capitalize}"}
    print "\n" + start
  when "2"
    puts "What would you like to add to the shopping list? \n"
    item = gets.chomp
    if shopping_list.include?(item)
      puts "That item is already on the list.\n"
      print start
    else
      puts "#{item} is added to the shopping list. \n"
      shopping_list << item
      print start
    end
  when "3"
    puts "What would you like to remove from the list? \n"
    item = gets.chomp
    if shopping_list.include?(item)
      shopping_list.delete(item)
      puts "#{item} has been deleted from the list. \n"
      print start
    else
        puts "Thats not in the list. \n"
        print start
    end
  when "4"
    puts "Have a nice day! \n"
    break
  else
      puts "Please select either 1, 2, 3 or 4. "
      print start
  end
end
