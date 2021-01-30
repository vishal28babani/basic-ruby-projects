def substrings (string, dictionary)
    arr = string.split
    res = Hash.new
    dictionary.each do |str|
      count = 0
      arr.each do |match| 
        if match.downcase.include?(str)
          count += 1
        end
      end
      if count > 0
        res[str]=count
      end
    end
    return res
end
  
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
  