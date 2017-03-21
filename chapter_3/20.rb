# 20. JSONデータの読み込み
# Wikipedia記事のJSONファイルを読み込み，「イギリス」に関する記事本文を表示せよ．問題21-29では，ここで抽出した記事本文に対して実行せよ．

require 'json'

puts File.readlines('./jawiki-country.json').map{|line| JSON.parse(line)}.find{|item| item["title"] == "イギリス"}

# 入出力は副作用 選択と出力をわける
