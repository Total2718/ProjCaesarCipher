#Caesar Cipher
#this program takes a string and shift value and converts the string into
# an encoded message using the shift value 
#Example: a with a shift value of 1 would be z

def caesar_cipher(uncoded_message, shift_factor = 1)
    #checks inputs for valid input type
    shift_factor = shift_factor.to_i
   puts "Original message: #{uncoded_message}"
    encoded_array = Array.new()
   check = check_inputs(uncoded_message, shift_factor)
   #if true, the code proceeds as normal
   if check == true

    uncoded_array = uncoded_message.split("")
    
    #uncoded_array allows for easier manipulation of individual characters
    uncoded_array.each_with_index do |character, index|
         
       
        old_character_number = character.ord 
        #checks if the ascii number generated is a lower case letter, uppercase 
        #letter, or a non letter character
        if old_character_number <= 90 && old_character_number >= 65
            new_character_number = old_character_number - shift_factor
            #this keeps the new letter uppercase
            if new_character_number < 65
                new_character_number = 91 - (65 - new_character_number) 
            end

        elsif old_character_number <= 122 && old_character_number >= 97
            new_character_number = old_character_number - shift_factor
            #this keeps the new letter undercase
            if new_character_number < 97
                new_character_number = 123 - (97 - new_character_number)
            end
            
        else
            #keeps the character the same if it's not a letter
            new_character_number = old_character_number
        end

        #converting the character number to a letter according to ASCII standards
        new_character = new_character_number.chr
        
        
        encoded_array[index] = new_character
    end
     encoded_message = encoded_array.join("")
     puts "Encoded message: #{encoded_message}" 
   else 
    #if the check is false, the following is printed
    puts "Please enter a valid string and number. The number must be in between
            0 and 33 excluding 0 and 33"
   end


end



def check_inputs(message, number)
    #checks if inputs are valid for the cipher function
    
    if message.instance_of?(String) == true
        if number.instance_of?(Fixnum) == true
            if number > 32 || number < 1
                
                 false
            else
                true
            end
            
        else
            
             false

        end
        
    else
        
        false
    end
    
end


caesar_cipher("Cool Message$%%^&**((", 5)