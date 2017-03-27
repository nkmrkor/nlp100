# 23. セクション構造
# 記事中に含まれるセクション名とそのレベル（例えば"== セクション名 =="なら1）を表示せよ．

require 'json'

p File.readlines('./jawiki-country.json').map{|line| JSON.parse(line)}.find{|item| item['title'] == 'イギリス'}['text'].scan(/(={2,3})(.*?)(={2,3})/).map{|i| [i[0].strip.size-1, i[1].strip]}

# [[Category:..|*]],[[Category:..]],[[Category:..|..]]
# [...] []
# * 直前の表現の0回以上の繰り返しにマッチ
# + 直前の表現の1回以上の繰り返しにマッチ
# (...) 正規表現をグループ化
# | この前後にある正規表現のどちらかと一致
# ? 直前の表現の0回または1回の繰り返しにマッチ
# \s 空白文字であるスペース、タブにマッチ
