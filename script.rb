def cipher(user_string_input, user_cipher = 0)
  character_bytes = user_string_input.bytes
  character_after_alteration = []
    character_bytes.each do |character|
      newChar = character
       for item in 1..user_cipher do
         if newChar == 122
           newChar = 97
         elsif newChar == 90
           newChar = 65
         elsif newChar == 32
           newChar = 32
         else
           newChar += 1
         end
       end
      character_after_alteration.push newChar
    end
  coded_char = character_after_alteration.pack('C*')
end

message = "Hunter x hunter is the best show yep"

puts "Original message: #{message}, cipher: #{cipher(message, 3)}"