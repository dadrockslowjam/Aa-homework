#a very hungry octopus wants to eat the longest fish in an array of fish
fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

    def sluggish_octopus(fish)
        biggest_fish = ""
        fish.each_with_index do |fish1, idx1|
            fish.each_with_index do |fish2, idx2|
                if fish2.length > fish1.length
                    biggest_fish = fish2
                end
            end
        end
     biggest_fish
    end


# puts sluggish_octopus(fish)

def dominant_octopus(fish)
    if fish.size <= 1
        return fish
    end
    fish_size   = fish.size
    half_of_fish = (fish_size / 2).round

    left_fish  = fish.take(half_of_fish)
    right_fish = fish.drop(half_of_fish)

    sorted_left_fish = dominant_octopus(left_fish)
    sorted_right_fish = dominant_octopus(right_fish)

    merge(sorted_left_fish, sorted_right_fish)
end

def merge(left_array, right_array)
    if right_array.empty?
        return left_array 
    end

    if left_array.empty?
        return right_array 
    end

        smallest_fish = if left_array.first.length <= right_array.first.length
        left_array.shift
        else
        right_array.shift
        end
    recursive = merge(left_array, right_array)
    [smallest_fish].concat(recursive)
    

end

# puts dominant_octopus(fish).last

def clever_octopus(fish)
    biggest = fish.first
    fish.each do |fish|
        if fish.length > biggest.length
            biggest = fish
        end
    end
    biggest
end

# puts clever_octopus(fish)
