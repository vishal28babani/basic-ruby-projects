def bubble_sort (arr)
    i=arr.size-1
    while i>0 do
      j=0
      while j<i do
        if arr[j]>arr[j+1]
          temp=arr[j]
          arr[j]=arr[j+1]
          arr[j+1]=temp
        end
        j+=1
      end
      i-=1
    end
    return arr
  end
  
  print bubble_sort([4,3,78,2,0,2])