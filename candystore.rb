def inventry(number)
inventry_hash = {}
(1..number).each do
  input = ""
  name = ""
  count = ""

  puts "Type quit to quit, press enter to continue"

  input = gets.chomp
  break if input == "quit"

  puts "Enter name of candy: "
  name = gets.chomp
  puts "Enter candy count: "
  count = gets.chomp


  inventry_hash[name] = count
end

puts "Here is the content that was in the hash: "

inventry_hash.each do |key, value|
  puts " #{key} => #{value}"


end
 
a=inventry_hash.values
puts"#{a}"

values_in_int = a.map { |a| a.to_i } # this line converts the string values to int
sum=values_in_int.sum
puts "the sum is #{sum}"
end

puts"**********************************\n\tWelcome to candy shop\n**********************************"
puts"\nHow many candy flavours count u Want to add :"
  flavour=gets
  flavour=flavour.to_i
  puts"\n"

inventry(flavour)
