#Caesar Cipher
#this program takes a string and shift value and converts the string into
# an encoded message using the shift value 
#Example: a with a shift value of 1 would be z

def caesar_cipher(uncoded_message, shift_factor = 1)
    #checks inputs for valid input type
   check = check_inputs(uncoded_message, shift_factor)
   #if true, the code proceeds as normal
   if check == true
    uncoded_array = uncoded_message.split()
    #uncoded_array allows for easier manipulation of individual characters
    uncoded_array.each_with_index do |character, index| 
        old_character_number = character.ord 
        #checks if the ascii number generated is a lower case letter, uppercase 
        #letter, or a non letter character
        if old_character_number <= 90 && old_character_number >= 65
        elsif old_character_number <= 122 && old_character_number >= 97
            puts "blah"
        else
            new_character_number = old_character_number
        end
        
        encoded_array[index] = new_character_number
    end
    encoded_message = encoded_array.join("")
   else 
    #if the check is false, the following is printed
    puts "Please enter a valid string and number."
   end


end



def check_inputs(message, number)
    #checks if inputs are valid for the cipher function
    if message.is_a? String == true 
        if number.is_a? Numeric == true
            return true
            
        else
             false

        end

    else
        false
    end
end