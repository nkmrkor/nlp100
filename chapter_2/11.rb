# 11. タブをスペースに置換
# タブ1文字につきスペース1文字に置換せよ．確認にはsedコマンド，trコマンド，もしくはexpandコマンドを用いよ．
# sed -e "s/\t/ /g" hightemp.txt

puts File.read('hightemp.txt').gsub(/\t/, ' ')

