# 18. 各行を3コラム目の数値の降順にソート
# 各行を3コラム目の数値の逆順で整列せよ（注意: 各行の内容は変更せずに並び替えよ）．確認にはsortコマンドを用いよ（この問題はコマンドで実行した時の結果と合わなくてもよい）．

str = File.read('hightemp.txt')
lines = []
str.each_line do |line|
  lines.push(line.split(/\t|\n/))
end

lines.each do |line|
  line[0],line[2] = line[2],line[0]
end
lines.sort!.each do |line|
  line[0],line[2] = line[2],line[0]
end

p lines
