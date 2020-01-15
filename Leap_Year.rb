# LEAP YEARS


puts "I can tell you how many leap years there are in a year range. What is the starting year? "
start_year = gets.chomp.to_i

puts "What is the end year?"
end_year = gets.chomp.to_i

years = []
for int in start_year..end_year
  years << int
end


leap_years = []
years.each do |year|
  if year % 4 == 0 && year % 100 != 0
    leap_years << year
  elsif year % 400 == 0
    leap_years << year
  end
end

puts "There are #{leap_years.length} leap years from year #{start_year} to year #{end_year}."
