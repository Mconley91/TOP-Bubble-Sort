puts "Enter a set of numbers separated by commas to begin sorting:"
input_array = gets.chomp.split(",")

def convert_to_i(array)
  mapped_array = array.map{|item| item = item.to_i}
  mapped_array
end

def is_sorted?(array)
  evaluating_arr = []
  array.each_with_index{|item,index| evaluating_arr.push(index != array.length-1 ? item <= array[index+1] : true)}
  evaluating_arr.all?
end

def bubble_sorter(input_array)
  array_as_integers = convert_to_i(input_array)
  while is_sorted?(array_as_integers) == false do #while input array is not sorted
    array_as_integers.each_with_index do|item,index| 
      if index != array_as_integers.length-1 #if we are not evaluating the last index
        if item > array_as_integers[index+1] #if the current item is GREATER than the next item
          container_variable = item #current item's value is stored in a third container
          array_as_integers[index] = array_as_integers[index+1] #current item's value is CHANGED to the next index's value (a lower value)
          array_as_integers[index+1] = container_variable #the NEXT index's value is CHANGED to the third container's value (the current higher value)
          p "Current Array is: #{array_as_integers}"
          puts "Is the Array sorted?: #{is_sorted?(array_as_integers) ? "YES!" : "NO!"}"
        end
      end
    end
  end
end
# bubble_sorter("4,3,78,2,0,2")
bubble_sorter(input_array)