puts "Enter a set of numbers separated by commas to begin sorting:"
input_array = gets.chomp.split(",")

def is_sorted?(array)
  evaluating_arr = []
  array.each_with_index{|item,index| evaluating_arr.push(index != array.length-1 ? item.to_i < array[index+1].to_i : true)}
  p evaluating_arr.all?
  evaluating_arr.all?
end


def bubble_sorter(input_array)
end
# bubble_sorter("4,3,78,2,0,2")


is_sorted?(input_array)
