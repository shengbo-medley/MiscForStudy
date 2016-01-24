import datetime
import subprocess

def get_date_with_format(day):
    list = ['日','月','火','水','木','金','土']
    return day.strftime("##%Y%m%d(") + list[day.weekday()]  + ")"

next_week = datetime.datetime.now()
next_monday = next_week - datetime.timedelta(days=next_week.weekday())

fp_w = open('tmp.txt', 'w', encoding='utf-8')
for i in range(0, 6):
    fp_w.write(get_date_with_format(next_monday+datetime.timedelta(i)) + '\n'
               '####予定' + '\n'
               '####DONE' + '\n'
               '####TODO' + '\n'
               '####メモ' + '\n'
               '####その他' + '\n')
fp_w.write('##週末の予定')
fp_w.close

subprocess.check_output( 'cat tmp.txt | pbcopy', shell=True )
subprocess.check_output( 'rm tmp.txt', shell=True )