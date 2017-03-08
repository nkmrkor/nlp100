# 10. 行数のカウント
# 行数をカウントせよ．確認にはwcコマンドを用いよ
# wc -l hightemp.txt

puts File.read('hightemp.txt').count("\n")