def cipher(user_string_input, user_cipher = 0)
  result = ''
  user_string_input.each_char do |c|
    char_as_ord = c.ord
    p char_as_ord
    minVal = char_as_ord < 91 ? 65 : 97
    if char_as_ord.between?(65, 90) || char_as_ord.between?(97, 122)
      result += ((((char_as_ord - minVal) + user_cipher) % 26) + minVal).chr
    else
      result += c
    end
  end
  result
end

message = "azAZ"

puts "Original message: #{message}, cipher: #{cipher(message, 3)}"