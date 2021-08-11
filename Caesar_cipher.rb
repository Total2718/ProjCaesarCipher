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
    uncoded_array.each do |character| 
        
    end
    
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