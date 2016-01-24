import subprocess

fp_r = open('data.txt', encoding='utf-8')
array = []
for line in fp_r:
    if not line.rstrip() == '':
        array.append(line)
fp_r.close

array.reverse()

fp_w = open('tmp.txt', 'w', encoding='utf-8')
for line in array:
    fp_w.write(line)
fp_w.close

subprocess.check_output( 'cat tmp.txt | pbcopy', shell=True )
subprocess.check_output( 'rm tmp.txt', shell=True )
