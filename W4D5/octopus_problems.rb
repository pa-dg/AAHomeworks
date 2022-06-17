#Big O-ctopus & Biggest Fish

def longest_fish(array)
    sorted = false

    while !sorted
        sorted = true
        array.each_with_index do |fish, i|
            next if i == array.length - 2
            next_fish = array[i + 1]
            
            if fish.length > next_fish.length
                fish, next_fish = next_fish, fish
                sorted = true
            end
        end
    end
    
    return array[-1]
end

p longest_fish(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])