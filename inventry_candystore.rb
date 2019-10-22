def inventory(number)
  inventory_hash = {}
  (1..number).each do
    puts "Type quit to quit, press enter to continue"
    input = gets.chomp

    break if input == "quit"

    puts "Enter name of candy: "
    name = gets.chomp

    puts "Enter candy count: "
    count = gets.chomp.to_i

    inventory_hash[name] = count
  end

  puts "Here is the content that was in the hash: "

  inventory_hash.each do |key, value|
    puts " #{key} => #{value}"
  end

  inventory_hash
end

