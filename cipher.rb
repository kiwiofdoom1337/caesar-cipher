def caesar_cipher(string, shift_num)
  coded_string = Array.new()
  string.split('').each do |el|
    if ("a".."z").include?(el) || ("A".."Z").include?(el) || ("0".."9").include?(el)
        if ("A".."Z").include?(el)
          coded_string.push(((el.to_i(36) - 10 + shift_num) % 26 + 10).to_s(36).upcase)
        elsif ("0".."9").include?(el)
          coded_string.push(((el.to_i(36) + shift_num) % 10).to_s(36))
        else
          coded_string.push(((el.to_i(36) - 10 + shift_num) % 26 + 10).to_s(36))
        end
    else
      coded_string.push(el) 
    end
  end
  puts coded_string.join
end

puts "Please enter a string you wish to code."
string = gets.chomp
puts "By how many positions should it be shifted right?"
shift = gets.chomp
while !shift.split("").all?("0".."9")
  puts "Please input a valid number."
  shift = gets.chomp
end

caesar_cipher(string, shift.to_i)