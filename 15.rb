# 15. 末尾のN行を出力
# 自然数Nをコマンドライン引数などの手段で受け取り，入力のうち末尾のN行だけを表示せよ．確認にはtailコマンドを用いよ．

str = File.read('hightemp.txt')
n = ARGV[0].to_i
puts str.slice(str.length-n-1, n)
