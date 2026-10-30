def fibs_rec(pos, fib_arr = [ 0,1 ])
    return fib_arr if pos == 0
    fib_arr << fib_arr[-1] + fib_arr[-2]
    fibs(pos - 1, fib_arr)
end

def fibs(pos)
  fibs_arr = [0,1]
  count = pos
  loop do
    if count == 0
      return fibs_arr
    else
      fibs_arr << fibs_arr[-1] + fibs_arr[-2]
      count -= 1
    end
  end
end
