def read_input
  gets
  input = gets.split(' ').map(&:to_i)
  weights = gets.split(' ').map(&:to_i)
  [input, weights]
end

def solve_problem
  input, weights = read_input
  mean = calc_mean(input, weights)
  puts mean
end

def calc_mean(input, weights)
  sum = 0
  input.each_with_index do |v, index|
    sum += input[index] * weights[index]
  end
  mean = sum / weights.sum.to_f
  mean.round(1)
end

solve_problem
