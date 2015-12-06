import csv, sys

infile = open('bank-full.csv')
reader = csv.reader(infile, delimiter=';')
outfile = open('bank-full_num.csv', 'wb')
writer = csv.writer(outfile, delimiter=' ')

jobCode = {}
maritalCode = {}
educationCode = {}
defaultCode = {}
housingCode = {}
loanCode = {}
contactCode = {}
monthCode = {}
poutcomeCode = {}
yCode = {}

reader.next()

for row in reader:
    label = None
    if row[16] == "yes":
        label = 1
    else:
        label = 0
    if not jobCode.has_key(row[1]):
        jobCode[row[1]] = len(jobCode)
    row[1] = jobCode[row[1]]

    if not maritalCode.has_key(row[2]):
        maritalCode[row[2]] = len(maritalCode)
    row[2] = maritalCode[row[2]]

    if not educationCode.has_key(row[3]):
        educationCode[row[3]] = len(educationCode)
    row[3] = educationCode[row[3]]

    if not defaultCode.has_key(row[4]):
        defaultCode[row[4]] = len(defaultCode)
    row[4] = defaultCode[row[4]]

    if not housingCode.has_key(row[6]):
        housingCode[row[6]] = len(housingCode)
    row[6] = housingCode[row[6]]

    if not loanCode.has_key(row[7]):
        loanCode[row[7]] = len(loanCode)
    row[7] = loanCode[row[7]]

    if not contactCode.has_key(row[8]):
        contactCode[row[8]] = len(contactCode)
    row[8] = contactCode[row[8]]

    if not monthCode.has_key(row[10]):
        monthCode[row[10]] = len(monthCode)
    row[10] = monthCode[row[10]]

    if not poutcomeCode.has_key(row[15]):
        poutcomeCode[row[15]] = len(poutcomeCode)
    row[15] = poutcomeCode[row[15]]

    if not yCode.has_key(row[16]):
        yCode[row[16]] = len(yCode)
    row[16] = yCode[row[16]]

    for i in range(16):
        row[i] = str(i+1) + ":" + str(row[i])
    res = [label]
    res.extend(row[0:16])
    writer.writerow(res)

infile.close()
outfile.close()
