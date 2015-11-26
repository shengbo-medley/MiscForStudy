p = []
total_start = Time.now
100.times do |j|
  start_time = Time.now
  1000000.times do |i|
    p << i # p.push iと比較
  end
  end_time = Time.now
  p_time = end_time - start_time
  print "#{j} times "
  puts p_time
end

total_end = Time.now
puts (total_end - total_start)/100
