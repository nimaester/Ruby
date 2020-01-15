users = [ { username: "nim", password: "password1" },          {username: "joe", password: "password2" }]

def autenticate(username, password, list)
  list.each do |user|
    if user[:username] == username && user[:password] == password
      return user
    end
    break
  end
  "You have entered a wrong input. Try again. "
end

attempt = 0
while attempt < 5 && (:username != "nim" || :password != "password1")
  puts "\nAuthenticating"
  puts "-" * 30
  puts "Please enter your username and password. "
  puts
  puts
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp

  auth = autenticate(username, password, users)
  puts auth
  puts "YOU NOW HAVE THE KEY TO THE VAULT"
  break

  attempt += 1
  if attempt <= 3
    puts "You have " + (attempt - 5).abs.to_s + " more tries. "
  elsif attempt ==  5
    puts "Your locked out of you account. "
  elsif attempt == 4
    puts "You have one more attempt. "
  end

end
