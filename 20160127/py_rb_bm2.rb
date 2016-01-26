require 'benchmark/ips'

Benchmark.ips do |x|
  x.config(
    time: 100,
    warmup: 10
  )

  x.report('ruby') do |times|
    system('ruby /Users/shengbo-xu/Develop/MiscForStudy/20151031/reverse.rb')
  end

  x.report('python') do |times|
    system('python /Users/shengbo-xu/Develop/MiscForStudy/20160127/reverse.py')
  end

  x.compare!
end
