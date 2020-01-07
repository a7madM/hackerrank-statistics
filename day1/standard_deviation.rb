def input 
    len = gets
    dataset = gets.split(' ').map(&:to_i)
    dataset
end

def standard_deviation(dataset)
    mean = dataset.sum/dataset.length.to_f

    deviations = []

    dataset.each do |element|
        deviation = (element - mean) ** 2
        deviations << deviation
    end

    standard_deviation = Math.sqrt(deviations.sum/deviations.length.to_f)
    standard_deviation.round(1)
end


dataset = input

puts standard_deviation(dataset)