def read_input()
  gets
  input = gets.split(' ').map(&:to_i)
  return input
end

def solve_problem(input)
  mean = cacl_mean(input)
  median = cacl_median(input)
  mode = calc_mode(input)

  [mean, median, mode]
end

def cacl_mean input
  input.sum / input.count.to_f
end

def cacl_median input
  input.sort!
  index = input.count / 2
  return input[index] if input.count.odd?

  (input[index] + input[index - 1]) / 2.0
end

def calc_mode arr
  freq = arr.inject(Hash.new(0)) { |h, v| h[v] += 1; h }
  arr.max_by { |v| freq[v] }
end

input = read_input
output = solve_problem(input)

puts output
