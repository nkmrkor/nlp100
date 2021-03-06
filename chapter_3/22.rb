# 22. カテゴリ名の抽出
# 記事のカテゴリ名を（行単位ではなく名前で）抽出せよ．

require 'json'

puts File.readlines('./jawiki-country.json').map{|line| JSON.parse(line)}.find{|item| item['title'] == 'イギリス'}['text'].scan(/\[\[Category:([^|\]]+)/)

# [[Category:..|*]],[[Category:..]],[[Category:..|..]]
# [...] []内にいずれか1文字にマッチ
# [^...] []内に含まれない1文字にマッチ
# * 直前の表現の0回以上の繰り返しにマッチ
# + 直前の表現の1回以上の繰り返しにマッチ
# (...) 正規表現をグループ化
# | この前後にある正規表現のどちらかと一致
