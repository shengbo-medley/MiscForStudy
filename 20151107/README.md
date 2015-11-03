# 概要
k平均法についての軽いエクササイズ

# ファイル説明
- iris.data
  - アヤメに関するデータファイル（出典：https://archive.ics.uci.edu/ml/datasets/Iris）
- iris.name
  - iris.dataの説明
- class.plot
  - gnuplotの出力のためのファイル
- knearest.rb
  - 実際の処理をしているファイル

# 実行
```bash
# 実行する
ruby knearest.rb

# 0回目の結果をプロットさせる
gnuplot -e "file=0" class.plot

# 5回目の結果をプロットさせる
gnuplot -e "file=5" class.plot
```

