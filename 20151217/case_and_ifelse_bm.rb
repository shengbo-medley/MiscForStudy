require 'benchmark/ips'

Benchmark.ips do |x|
  x.config(
    time: 500, # default 5
    warmup: 5 # default 2
  )

  x.report('use ifelse') do |times|
    a = rand(4)
    if a == 0
      2
    elsif a == 1
      3
    elsif a == 2
      4
    elsif a == 3
      5
    elsif a == 4
      6
    else
      7
    end
  end

  x.report('use case') do |times|
    a = rand(4)
    case
    when a == 0
      2
    when a == 1
      3
    when a == 2
      4
    when a == 3
      5
    when a == 4
      6
    else
      7
    end
  end

  x.compare!
end
