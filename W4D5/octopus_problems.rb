#Big O-ctopus & Biggest Fish

#bubble sort
def quadratic_fish(array)
    sorted = false

    while !sorted
        sorted = true
        (0...array.length-1).each do |i|
            j = i + 1
            
            if array[i].length > array[j].length
                array[i], array[j] = array[j], array[i]
                sorted = true
            end
        end
    end
    
    return array[-1]
end

p quadratic_fish(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])

#merge sort
def nlog_fish(fishes)
    return fishes if fishes.length == 1
    
    mid = fishes.length / 2
    left = fishes.take(mid)
    right = fishes.drop(mid)

    sorted_left = left.nlog_fish(left, right)
    sorted_right = right.nlog_fish(left, right)
end

def merge(left, right)
    merge = []
    
    until left.empty? || right.empty?
        if left.first < right.first
            merge << left.first
        else
            merge << right.first
        end
    end

    merged = merge + left + right
    return merged[0]
end

p nlog_fish(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])