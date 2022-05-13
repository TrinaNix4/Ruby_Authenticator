
users = [
          {username: "trina" , password: "pw1"},
          {username: "kevin" , password: "pw2"},
          {username: "jack" , password: "pw3"},
          {username: "george" , password: "pw4"},
          {username: "pumpkin" , password: "pw5"},

]



puts "Welcome to the authenticator"

25.times {print "-"}

def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return user_record
    end
end 
     "username and/or password not found"
end
    attempts = 1
while attempts < 4
  print "username: "
  username = gets.chomp
  print "password: "
  password = gets.chomp
auth = auth_user(username, password, users)
  puts auth
  puts "Press n to quit or any other key to continue"
  input = gets.chomp.downcase
  break if input == "n"
   
  attempts += 1 

end 
puts "you have exceeded the number of attempts" if attempts == 4
