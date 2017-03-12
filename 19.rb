# 19. 各行の1コラム目の文字列の出現頻度を求め，出現頻度の高い順に並べる
# 各行の1列目の文字列の出現頻度を求め，その高い順に並べて表示せよ．確認にはcut, uniq, sortコマンドを用いよ．
# http://edo.blog.jp/archives/1821089.html

str = File.read('hightemp.txt')
lines = []
words = []
str.each_line do |line|
  lines.push(line.split(/\t|\n/))
end

lines.each{|line|
  words.push(line[0])
}
p words
