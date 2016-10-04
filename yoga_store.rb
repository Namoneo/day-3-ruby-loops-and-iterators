def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end

shopping_cart = []

@products = [
  { reference_number: 1231, name: "Super Lite Mat", price: 10 },
  { reference_number: 1232, name: "Power Mat", price: 20 },
  { reference_number: 1233, name: "Block", price: 30 },
  { reference_number: 1234, name: "Meditation cushion", price: 30 },
  { reference_number: 1235, name: "The best T-shirt", price: 200 },
  { reference_number: 1236, name: "The cutest yoga pants", price: 300 },
  { reference_number: 1237, name: "Bring Yoga To Life", price: 30 },
  { reference_number: 1238, name: "Light On Yoga", price: 10 }
]

puts "*    Welcome to Yoga store!    *"
print_divider

puts "These are our products"

@products.each do |product|
  puts "*#{product[:reference_number]} #{product[:name]} #{product[:price]}"
end

loop do
  puts "\n"
  print_divider

  puts "Did you choose any product? (N/Y)"
  answer = gets.chomp.upcase

  if answer == "N"
    puts "Please choose any product you like"
    print_progress_bar
  elsif answer == "Y"
    puts "Please fill the reference number"
    number = gets.chomp.to_i
    shopping_cart.push(number)
    break
  else
    puts "That's not a valid input. Try again."
  end
end

shopping_cart.each do |product|
  puts "The chosen #{product} in your basket"
end
