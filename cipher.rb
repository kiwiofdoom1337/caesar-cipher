# frozen_string_literal: true

def caesar_cipher(string, shift_num)
  coded_string = []
  string.chars.each do |el|
    if ('a'..'z').cover?(el) || ('A'..'Z').cover?(el) || ('0'..'9').cover?(el)
      if ('A'..'Z').cover?(el)
        coded_string.push((((el.to_i(36) - 10 + shift_num) % 26) + 10).to_s(36).upcase)
      elsif ('0'..'9').cover?(el)
        coded_string.push(((el.to_i(36) + shift_num) % 10).to_s(36))
      else
        coded_string.push((((el.to_i(36) - 10 + shift_num) % 26) + 10).to_s(36))
      end
    else
      coded_string.push(el)
    end
  end
  puts coded_string.join
end

puts 'Please enter a string you wish to code.'
string = gets.chomp
puts 'By how many positions should it be shifted right?'
shift = gets.chomp
until shift.chars.all?('0'..'9')
  puts 'Please input a valid number.'
  shift = gets.chomp
end

caesar_cipher(string, shift.to_i)
