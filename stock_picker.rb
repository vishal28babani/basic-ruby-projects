def stock_picker (stocks)
    lowest = stocks[0]
    ans = [0,0]
    temp = 0
    low_index = 0
    stocks.each_with_index do |stock, index|
      if stock < lowest 
        lowest = stock
        low_index = index
      end
      if stock - lowest > temp
        temp = stock - lowest 
        ans[0]=low_index
        ans[1]=index
      end
    end
    return ans
end
  
print stock_picker([17,3,6,9,15,8,6,1,10])