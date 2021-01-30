
def caesar_cipher(string, shift)
    shift %= 26
    arr = string.split("")
    res = []
    arr.each do |char|
      if char.ord > 96 && char.ord < 123
        if char.ord + shift > 122
          char = ( 96 + shift - 122 + char.ord ).chr
        else 
          char = (char.ord + shift).chr
        end
      end
      if char.ord > 64 && char.ord < 91
        if char.ord + shift > 90
          char = (64+shift-90+char.ord).chr
        else
          char = (char.ord+shift).chr
        end
      end
      res.push(char)
    end
    return res.join
  end
  
  puts caesar_cipher("What a string!", 5)
  