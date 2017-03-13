# 13. col1.txtとcol2.txtをマージ
# 12で作ったcol1.txtとcol2.txtを結合し，元のファイルの1列目と2列目をタブ区切りで並べたテキストファイルを作成せよ．確認にはpasteコマンドを用いよ．


File.open("sample.txt", "w").puts File.read('col1.txt').gsub(/\n/,"\t").scan(/.{1,2}/).zip(File.read('col2.txt').split(/\n/)).join.scan(/.{1,3}/)