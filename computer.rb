class Computer
    @@users={}
   def initialize(username,password)
       @username=username
       @password=password
       @files={}
       @@users[username]=password
   end

def create(filename)
    @time=Time.now
    @files[filename]=time
    puts "The file #{filename} was created at #{time}"
end

def Computer.get_users
    @@users
end
end

my_computer=Computer.new("Nelson","16369812")
your_copmuter = Computer.new("you", 56789)

my_computer.create("groceries.txt")
your_computer.create("todo.txt")

puts "Users: #{Computer.get_users}"