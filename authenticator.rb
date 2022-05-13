
users = [
          {username: "trina" , password: "pw1"},
          {username: "kevin" , password: "pw2"},
          {username: "jack" , password: "pw3"},
          {username: "george" , password: "pw4"},
          {username: "pumpkin" , password: "pw5"},

]



puts "Welcome to the authenticator"

25.times {print "-"}

attempts = 1
while attempts < 4
  print "username: "
  username = gets.chomp
  print "password: "
  password = gets.chomp

  users.each do |user|
      if user[:username] == username && user[:password] == password
        puts user
      else 
        puts "username and/or password not found"
      end
    end 
    puts "Press n to quit or any other key to continue"
    input = gets.chomp.downcase
    break if input == "n"
   
    attempts += 1 

end 