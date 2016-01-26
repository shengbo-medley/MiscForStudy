require 'benchmark/ips'

Benchmark.ips do |x|
  x.config(
    time: 100,
    warmup: 5
  )

  x.report('ruby') do |times|
    system('ruby /Users/shengbo-xu/Develop/MiscForStudy/20150724/report.rb')
  end

  x.report('python') do |times|
    system('python /Users/shengbo-xu/Develop/MiscForStudy/20160127/report.py')
  end

  x.compare!
end
