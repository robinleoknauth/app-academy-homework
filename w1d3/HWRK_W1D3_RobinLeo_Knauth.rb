def sum_to(number)
  return 1 if number == 1
  return 0 if number == 0
  number + sum_to(number - 1)
end

def add_numbers(arr)
  return arr[0] if arr.length < 2
  add_numbers(arr[1..-1]) + arr[0]
end

def gamma_function(number)
  return 1 if number == 1
  return nil if number == nil
  (number - 1) * gamma_function(number - 1)
end

def ice_cream_shop(flavors, favorite)
  return favorite == flavors[0] if flavors.length < 2
  return true if flavors.pop == favorite
  ice_cream_shop(flavors[0..-2], favorite)
end

def reverse(string)
  return string if string.length < 2
  string[-1] + reverse(string[0...-1])
end
