THRESHOLD = 0.001

while true do
  m.times do |i|
    tmp0 =  alpha * ((y[i] - (a * x[i] + b)) * x[i]) / m
    tmp1 =  alpha * (y[i] - (a * x[i] + b)) / m
  end
  a = a - tmp0
  b = b - tmp1
  break if tmp0 < THRESHOLD && tmp1 < THRESHOLD
end
