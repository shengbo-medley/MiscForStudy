def tmp(filename)
  res = {}
  File.open(filename) do |o|
    while line = o.gets
      a = line.split(" ")
      print a[1..16].join('')
    end
  end
end

tmp('data.txt')
