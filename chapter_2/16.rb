# 16. ファイルをN分割する
# 自然数Nをコマンドライン引数などの手段で受け取り，入力のファイルを行単位でN分割せよ．同様の処理をsplitコマンドで実現せよ．
str = File.read('hightemp.txt')
lines = []
str.each_line do |line|
  lines.push(line)
end

lines.each_slice((lines.count.to_f / ARGV[0].to_i).ceil) {|s| p s }
