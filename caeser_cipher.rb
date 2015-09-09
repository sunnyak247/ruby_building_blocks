def caesar_cipher(str, num)
  characters = str.split('')
  
  new_string = [] 
  i = 0
  while i < characters.length
    character = characters[i]
    if (97..122).include?character.ord
     character = (character.ord - "a".ord)
     char = (character + num) % 26
     new_char = char + "a".ord 
     new_string << new_char.chr
    elsif (65..90).include?character.ord
     character = (character.ord - "A".ord)
     char = (character + num) % 26
     new_char = char + "A".ord 
     new_string << new_char.chr
    else
     new_string << character
    end
    
    i += 1
  end
  
  new_string.join(" ")
end

puts caesar_cipher("What a string!", 5)
puts caesar_cipher("My name is Ojo Dada, people call me Dada", 5)

#(character.ord > 64 && character.ord < 91) || (character.ord > 96 && character.ord < 123)