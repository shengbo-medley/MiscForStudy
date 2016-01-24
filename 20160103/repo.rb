require 'date'

def get_date_with_format(day)
  day.strftime("#%Y%m%d(#{%w(日 月 火 水 木 金 土)[day.wday]})")
end

next_week = Date.today
next_monday = next_week - next_week.wday + 1

f = File.open('tmp.txt', 'w')
f.puts "@(#{Date.today.year}年記録)[メモ|日々の記録]"
f.puts ""
7.times do |i|
  f.puts "#{get_date_with_format(next_monday+i)}
##予定
 - [ ] 青汁飲む
 - [ ] マルチビタミン
 - [ ] コンドロイチン
 - [ ] 部屋の片付け
##DONE"
  f.puts "##TODO"
  if [1,4,0].include?((next_monday+i).wday)
    f.puts " - [ ] はてぶ書く"
    f.puts ""
  end
f.puts "##メモ
##その他
"
end

f.close

system('cat tmp.txt | pbcopy')
system('rm tmp.txt')
