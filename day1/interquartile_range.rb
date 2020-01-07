

def input
  length = gets

  elements = gets.split(' ').map(&:to_i)

  frequencies = gets.split(' ').map(&:to_i)

  [elements, frequencies]
end

def result(elements, frequencies)
  quartile_data = []

  elements.each_with_index do |element, index|
    frequency  = frequencies[index]
    frequency.times { quartile_data << element }
  end

  quartile_data.sort!
  middle = quartile_data.length / 2
  q1 = quartile_median(quartile_data[0...middle])

  middle += 1 if quartile_data.length.odd?
  q3 = quartile_median(quartile_data[middle..])
  result = q3 - q1
  puts result.to_f.ceil(1)
end

def quartile_median quartile
  len = quartile.length
  median = (quartile[(len - 1) / 2] + quartile[len / 2]) / 2.0
  median.to_i
end

elements, frequencies = input

result(elements, frequencies)
