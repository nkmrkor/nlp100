# 17. １列目の文字列の異なり
# 1列目の文字列の種類（異なる文字列の集合）を求めよ．確認にはsort, uniqコマンドを用いよ．

p File.read('hightemp.txt').lines.map{|line| line.chars.values_at(0) }.uniq
