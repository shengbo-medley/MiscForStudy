import subprocess

with open('data.txt', encoding='utf-8') as fp_r:
    array = []
    for line in fp_r:
        if not line.rstrip() == '':
            array.append(line)

array.reverse()

with open('tmp.txt', 'w', encoding='utf-8') as fp_w:
    for line in array:
        fp_w.write(line)

subprocess.call('cat tmp.txt | pbcopy', shell=True)
subprocess.call('rm tmp.txt', shell=True)
