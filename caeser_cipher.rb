def caesar_cipher(str, num)
  characters = str.downcase.split('')
  
  new_string = [] 
  i = 0
  while i < characters.length
    character = characters[i]
    if character == "!" || character == " " || character == "." || character == ","
     new_string << character
   else
     character = (character.ord - "a".ord)
     new_char = (((character + num) % 26) + "a".ord).chr
     new_string << new_char
   end
    
    i += 1
  end
  
  new_string.join(" ").capitalize
end

puts caesar_cipher("What a string!", 5)
puts caesar_cipher("My name is ojo Dada, people call me dada", 5)