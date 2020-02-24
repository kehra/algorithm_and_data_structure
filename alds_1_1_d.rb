n = gets.chomp.to_i

data = n.times.map do
  gets.chomp.to_i
end

max = -Float::INFINITY
min = data.shift

data.each do |i|
  max = i - min if max < i - min
  min = i if min > i
end

puts max