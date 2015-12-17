require 'benchmark/ips'

Benchmark.ips do |x|
  x.config(
    time: 100, # default 5
    warmup: 5 # default 2
  )

  x.report('use push') do |times|
    a = []
    a.push(times)
  end

  x.report('use <<') do |times|
    a = []
    a << times
  end

  x.compare!
end