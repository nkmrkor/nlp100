# 20. JSONデータの読み込み
# Wikipedia記事のJSONファイルを読み込み，「イギリス」に関する記事本文を表示せよ．問題21-29では，ここで抽出した記事本文に対して実行せよ．

require 'json'

puts File.open('jawiki-country.json').readlines.map{|x| JSON.parse(x)}.select{|item| item["title"]=="イギリス"}
#File.write("hoge.txt", File.open('jawiki-country.json').readlines.map{|x| JSON.parse(x)}.select{|item| item["title"]=="イギリス"})
#p File.open('sample.json').readlines.map{|x| JSON.parse(x)}.select{|item| item["title"]=="イギリス"}
