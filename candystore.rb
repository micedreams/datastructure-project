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


puts "\nHow many candy flavours count u Want to add :"

flavour_count = gets.chomp.to_i


inventory_hash = inventory(flavour_count)



  sum = inventory_hash.values.sum

  puts "**********************************\n\tWelcome to candy shop\n**********************************"
  while sum>0
puts "Here are our flavours "

  inventory_hash.each do |key, value|
    puts " #{key}"
  end
puts "which candy flavour do u want?"

bought_flavour = gets.chomp
while inventory_hash.fetch(bought_flavour)>0
puts "in what quantity do u want #{bought_flavour} candy"
bought_count = gets.chomp
bought_count = bought_count.to_i

if (inventory_hash.fetch(bought_flavour) > bought_count)
  inventory_hash[bought_flavour] =
    inventory_hash.fetch(bought_flavour).to_i - bought_count
    puts"thank u for shopping"
    break
else puts"we only have #{inventory_hash.fetch(bought_flavour)} in stock "
end
end
 puts"we are out of stock"
end
puts"we are closed"
break
