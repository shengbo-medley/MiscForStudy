def sample_data(file_name)
  data = []

  open(file_name) do |f|
    while l = f.gets
      item = l.chomp.split(',')
      break if item.empty?
      data << { x: item[1].to_f, y: item[3].to_f }
    end
  end
  data
end

def get_distance(point1, point2)
  Math.sqrt((point1[:x] - point2[:x])**2 + (point1[:y] - point2[:y])**2)
end

def nearest_group(point, center_points)
  nearest_distance = Float::MAX
  nearest_group = 0
  center_points.each_with_index do |center_point, index|
    distance = get_distance(center_point, point)
    if distance < nearest_distance
      nearest_distance = distance
      nearest_group = index
    end
  end
  nearest_group
end

def get_center_points(data)
  data1 = []
  data2 = []
  data3 = []
  data.each do |d|
    case d[:group]
    when 0
      data1 << d
    when 1
      data2 << d
    when 2
      data3 << d
    end
  end
  res = []
  res << get_gravity(data1)
  res << get_gravity(data2)
  res << get_gravity(data3)
  res
end

def display_center_point(iter, center_points)
  puts "-----#{iter}:center point display start-----"
  puts center_points
  puts "-----#{iter}:center point display end-----"
end

def output_file(data, iter)
  file0 = File.open("result/res_0_#{iter}", 'w')
  file1 = File.open("result/res_1_#{iter}", 'w')
  file2 = File.open("result/res_2_#{iter}", 'w')

  data.each do |d|
    case d[:group]
    when 0
      file0.puts "#{d[:x]} #{d[:y]}"
    when 1
      file1.puts "#{d[:x]} #{d[:y]}"
    when 2
      file2.puts "#{d[:x]} #{d[:y]}"
    end
  end

  file0.close
  file1.close
  file2.close
end

def get_gravity(points)
  x = 0
  y = 0
  length = points.size
  points.each do |point|
    x += point[:x]
    y += point[:y]
  end
  {x: x / length.to_f, y: y / length.to_f }
end

data = sample_data('iris.data')

center_points = data.shuffle[0...3]

display_center_point(0, center_points)

data.each do |d|
  d[:group] = nearest_group(d, center_points)
end

output_file(data, 0)

10.times do |i|
  center_points = get_center_points(data)
  display_center_point(i, center_points)

  data.each do |d|
    d[:group] = nearest_group(d, center_points)
  end
  output_file(data, i)
end

