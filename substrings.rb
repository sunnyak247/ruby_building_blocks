def substrings(words, dictionary)
    
  words_arr = words.downcase.split(' ')
  strings = Hash.new(0)
  
  words_arr.map do |word|
    j = 0
    while j < word.length
      start_index = j
      
      k = j
      while k <= word.length
        finish_index = k
        substring = word.slice(j,k)
        if dictionary.include?(substring)
          strings[substring] += 1 
        end
        
        k += 1
      end
      
      j += 1
    end 
  end
  
  strings
end
words = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", words)
puts substrings("below", words)