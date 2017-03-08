# 11. タブをスペースに置換
# タブ1文字につきスペース1文字に置換せよ．確認にはsedコマンド，trコマンド，もしくはexpandコマンドを用いよ．
# sed -e "s/\t/ /g" hightemp.txt

str1 = File.read('hightemp.txt')
str2 = str1.gsub(/\t/, ' ')
File.open('hightemp.txt', "w").puts(str2)
