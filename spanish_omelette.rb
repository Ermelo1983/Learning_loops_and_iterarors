def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 2.0; print "."}
  puts "\n"
end

NUM_POTATOES = 5
NUM_EGGS = 6

ingredients = [
  {name: "potatoes", quantity: NUM_POTATOES},
  {name: "eggs", quantity: NUM_EGGS},
  {name: "onion", quantity: 1},
  {name: "oil", quantity: "some"},
  {name: "salt", quantity: "some"},
]

puts "   * Let's cook a Spanish Omelette! *"
print_divider

puts "You need the following ingredients:"

ingredients.each do | ingredient |
  puts "- #{ingredient[:quantity]} #{ingredient[:name]}"
end

loop do
  puts "\n"
  print_divider

    puts "Got all ingredients you need, type y for yes and n for no "
    answer = gets.chomp.downcase
    if answer == "n"
      puts "You need to go shopping!"
      print_progress_bar
    elsif answer == "y"
      puts "Let's start cooking!"
      break
    else
      puts "You typed a wrong input, try again!"
    end
  end
