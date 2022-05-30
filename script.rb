def cipher(user_string_input, user_cipher = 0)
    character_bytes = user_string_input.bytes
    character_after_alteration = []
      character_bytes.each do |character|
        newChar = character
         for item in 1..user_cipher do
           if newChar == 122
             newChar = (97)
           elsif newChar == 90
             newChar = (65)
           else
             newChar += 1
           end
         end
        character_after_alteration.push newChar
      end
    
    coded_char = character_after_alteration.pack('C*')
    p "Original #{user_string_input}, coded_char: #{coded_char}"
  end
  
  