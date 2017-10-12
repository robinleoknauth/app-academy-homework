fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_approach(arr)
  longest_fish = nil
  arr.each_index do |i|
    j = i + 1
    while j < arr.length
      case arr[i] <=> arr[j]
      when -1
        longest_fish = arr[i]
      when 0
        longest_fish = arr[j]
      when 1
        longest_fish = arr[j]
      end
      j += 1
    end
  end
  longest_fish
end

def dominant_octopus(arr)    #merge sort
  return arr if arr.length == 1
  mid = arr.length / 2

  left = dominant_octopus(arr[0...mid])
  right = dominant_octopus(arr[mid..-1])

  merge(left, right)
end

def merge(left, right)
  result = []
  until left.empty? || right.empty?
    case left[0].length <=> right[0].length
    when -1
      result << left.shift
    when 0
      result << left.shift
      result << right.shift
    when 1
      result << right.shift
    end
  end
  result + left + right

end

def clever_octopus(arr)
  longest_fish = arr[0]
  arr[1..-1].each do |fish|
    if longest_fish.length < fish.length
      longest_fish = fish
    end
  end
  longest_fish
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
new_tiles_ds = {"up"=>0, "right-up"=>1, "right"=>2, "right-down"=>3, "down"=>4, "left-down"=>5, "left"=>6, "left-up"=>7}

def slow_dance(arr, target)
  arr.each_index do |i|
    if arr[i] == target
      return i
    end
  end
  nil
end

def constant_dance(ds, target)
  ds[target]
end


p sluggish_approach(fishes)
p dominant_octopus(fishes)[-1]
p clever_octopus(fishes)

p slow_dance(tiles_array, "right")
p constant_dance(new_tiles_ds, "right-down")
