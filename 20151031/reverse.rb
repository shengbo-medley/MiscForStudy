array = []
open('data.txt') do |f|
  while l = f.gets
    array << l unless l.chomp == ''
  end
end

f = File.open('tmp.txt', 'w')
array.reverse.each { |t| f.puts t }
f.close

system('cat tmp.txt | pbcopy')
system('rm tmp.txt')
