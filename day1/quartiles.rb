# input = [3, 7, 8, 5, 12, 14, 21, 13, 18]
def get_input
    gets
    input = gets.split(" ").map(&:to_i)
    input
end



def cacl_median input
  sorted = input.sort
  len = sorted.length
  median = (sorted[(len - 1) / 2] + sorted[len / 2]) / 2.0
  median.to_i
end

input = get_input.sort
result = []

middle_point = input.length/2
result << cacl_median(input[0...middle_point])

result << cacl_median(input)

middle_point += 1 if input.length.odd?
result << cacl_median(input[middle_point..])

puts result.sort