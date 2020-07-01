# 解凍
find ./ -name "*-16.0a.zip" -type f -print0 | xargs -0 -I {} unzip {} 

# 対象のcsvの改行コードを一括変換
find . -name '*.csv' -type f | xargs -n 10 nkf -Lu --overwrite

# 対象のCSV一覧を出力
find ./ -name "*.csv" -type f -print0 | xargs -0 -I {}  echo `pwd`/{} > list.txt
