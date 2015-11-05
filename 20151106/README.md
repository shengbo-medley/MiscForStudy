# 概要
外れ値検知をするサンプルプログラム

# ファイル説明
- adult.data
  - https://archive.ics.uci.edu/ml/datasets/Adult に掲載されているデータ
- adult.names
  - adult.dataの説明
- single.R
  - 労働時間のみに基づいた、著者の今週の労働時間が外れ値かどうか(集団の何%地点に分布するか)
- double.R
  - 労働時間と年齢に基づいた、著者の今週の労働時間と年齢が外れ値かどうか(集団の何%地点に分布するか)

# 実行方法
```bash
> R # を起動

# Rで実行
> source('single.R')
[1] 0.9719319
> source('double.R')
          [,1]
[1,] 0.9165473
```
