def caesar_cipher(string, shift_num = 1)
  coded_string = Array.new()
  string.split('').each do |el|
    if ("a".."z").include?(el) || ("A".."Z").include?(el)
      if el.to_i(36) + shift_num > 35
        if /[[:upper:]]/.match(el)
          coded_string.push((el.to_i(36) + shift_num - 36 + 10).to_s(36).upcase)
        else
          coded_string.push((el.to_i(36) + shift_num - 36 + 10).to_s(36))
        end 
      else
        if /[[:upper:]]/.match(el)
          coded_string.push((el.to_i(36) + shift_num).to_s(36).upcase)
        else
          coded_string.push((el.to_i(36) + shift_num).to_s(36))
        end
      end
    else
      coded_string.push(el) 
    end
  end
  puts coded_string.join
end

caesar_cipher("What a strinG!", 5)