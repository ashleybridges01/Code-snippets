# users array
users = [
    { username: "Ashley", password: "pw1" },
    { username: "Bruce", password: "pw2" },
    { username: "Mike", password: "pw3" },
    { username: "Garret", password: "pw4" },
    { username: "Wendy", password: "pw5" }
]

# execution workflow

puts "Welcome to MessageMe"
25.times { print "-" }
puts
puts "Login page"

attempts = 1
while attempts < 4
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp
    auth = auth_user(username, password, users)
    puts auth
    puts "Press any key to continue -- Press q to quit"
    input = gets.chomp.downcase
    break if input == "q"
    attempts += 1
end
puts "You have exceeded the number of attempts" if attempts == 4