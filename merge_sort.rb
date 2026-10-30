def merge_sort(array)
    high = array.length - 1
    low = 0
    if low < high
        mid = ((low + high) / 2)
        a = merge_sort(array.slice(low..mid))
        b = merge_sort(array.slice(mid + 1..high))
        merge(a,b)
    else
        return array
    end
end

def merge(a,b)
i = 0
j = 0
k = 0
arr = []
while i <= a.length - 1 && j <= b.length - 1
    if a[i] >= b[j]
        arr[k] = b[j]
        k += 1
        j += 1

    elsif a[i] <= b[j]
        arr[k] = a[i] 
        k += 1
        i += 1
    end
end

while i <= a.length - 1
    arr[k] = a[i]
    k += 1
    i += 1
end

while j <= b.length - 1
    arr[k] = b[j]
    k += 1
    j += 1
end

return arr
end