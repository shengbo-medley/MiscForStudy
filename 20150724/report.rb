require 'date'

def get_date_with_format(day)
  day.strftime("##%Y%m%d(#{%w(日 月 火 水 木 金 土)[day.wday]})")
end

next_week = Date.today
next_monday = next_week - next_week.wday + 1

open('tmp.txt', 'w') do |f|
  5.times do |i|
    f.puts "#{get_date_with_format(next_monday+i)}
####予定
####DONE
####TODO
####メモ
####その他
"
  end
  f.puts '####週末の予定'
end

system('cat tmp.txt | pbcopy')
system('rm tmp.txt')
