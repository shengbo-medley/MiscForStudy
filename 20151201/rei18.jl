using DataFrames
srand(123)
bank = readtable("bank-full.csv", separator=';')
N = size(bank, 1)
inds_train = rand(1:N, int(0.7 * N))
X_train = convert(Array, bank[inds_train, 1:16])
y_train = convert(Array, bank[inds_train, :y])