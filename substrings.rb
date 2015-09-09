def substrings(words, dictionary)
    
  words_arr = words.downcase.split(' ')
  strings = {}
  
  words_arr.each do |word|
    j = 0
    while j < word.length
      start_index = j
      
      k = j
      while k <= word.length
        finish_index = k
        xyz = word.slice(j,k)
        if dictionary.include?(xyz)
          if strings.include?(xyz)
            strings[xyz] += 1
          else
            strings[xyz] = 1
          end
        end
        
        k += 1
      end
      
      j += 1
    end 
  end
  
  strings
end

puts substrings("Howdy partner, sit down! How's it going?", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])
puts substrings("below", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])