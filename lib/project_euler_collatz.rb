def even_next(n)
  n = n / 2
  return n
end

def odd_next(n)
  n = 3 * n + 1
  return n
end

def next_value(n)
  if n % 2 == 0
    return even_next(n)
  else
    return odd_next(n)
  end
end

def collatz(n)
  collatz_arr = [n]
  next_num = n
  while next_num != 1
    collatz_arr.push(next_value(next_num))
    next_num = next_value(next_num)
  end
  return collatz_arr
end

def longest_collatz
   i = 999_999
   long_collatz_arr = []

   while i > 0

     if collatz(i).length > long_collatz_arr.length
       long_collatz_arr = collatz(i)
       #puts "#{i} is #{collatz(i).length}"
     else
       i -= 1
     end
   end
   return long_collatz_arr[0]
 end
