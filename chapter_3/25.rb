# 25. テンプレートの抽出
# 記事中に含まれる「基礎情報」テンプレートのフィールド名と値を抽出し，辞書オブジェクトとして格納せよ．

require 'json'

puts File.readlines('./jawiki-country.json').map{|line| JSON.parse(line)}.find{|item| item['title'] == 'イギリス'}['text'].scan(/(({{基礎情報.*\n)(.*\n)*(}}))/)[0][0].scan(/(\|)(.*?)(=)(.*?)(\n)/).map{|i| [i[1].strip, i[3].strip]}.to_h

# * 直前の表現の0回以上の繰り返しにマッチ
# (...) 正規表現をグループ化
# | この前後にある正規表現のどちらかと一致
# ? 直前の表現の0回または1回の繰り返しにマッチ
