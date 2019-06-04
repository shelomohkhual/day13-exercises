
def half_and_double(array)
  new_array = array.map do |num|
      if num % 2 == 0
          return num / 2
      else
          return num * 2
      end
  end
  new_array
end

p half_and_double([4, 5, 7, 10])