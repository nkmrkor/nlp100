# 12. 1列目をcol1.txtに，2列目をcol2.txtに保存
# 各行の1列目だけを抜き出したものをcol1.txtに，2列目だけを抜き出したものをcol2.txtとしてファイルに保存せよ．確認にはcutコマンドを用いよ．
# cut -c1 hightemp.txt

str = File.read('hightemp.txt')
File.open('col1.txt', "w").puts(str.lines.map{|line| line.chars.values_at(0) })
File.open('col2.txt', "w").puts(str.lines.map{|line| line.chars.values_at(1) })