
info = {money: 5000, interest: 0.10, time: 2 }

def calculate_interest(stuff)
  money_with_interest = stuff[:money] * stuff[:interest]
  puts "Your initial deposit is $ #{stuff[:money]}.00"
  puts "You have been with us for #{stuff[:time]} years now."
  puts "Your initial money $ #{stuff[:money]}.00 + #{stuff[:interest]}% + #{stuff[:time]} years equals to:"
  "$#{money_with_interest.round * stuff[:time]}.00 dollars."
end

p calculate_interest(info)


sentence = "Hello my my old come darkness my old friend. I have come to talk with you again"

def word_count(string)
  result = Hash.new(0)
  string.downcase.split(" ").each { |word| result[word] += 1 }
  result.sort_by { |key, value| value }.reverse!


end

# print word_count(sentence)


# word_count("string string hello as as hello hells no no reget")
