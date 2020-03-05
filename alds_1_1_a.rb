n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i)

(1...n).each do |i|
  v = arr[i]
  
  j = i - 1
  while j >= 0 && arr[j] > v do
    arr[j + 1] = arr[j]
    j -= 1
  end
  
  arr[j + 1] = v
  
  puts arr.join(' ')
end
