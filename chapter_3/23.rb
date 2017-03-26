# 23. セクション構造
# 記事中に含まれるセクション名とそのレベル（例えば"== セクション名 =="なら1）を表示せよ．

require 'json'

puts File.open('jawiki-country.json').readlines.map{|x| JSON.parse(x)}.select{|item| item["title"]=="イギリス"}.to_s.scan(/(={2,3})(.*?)(={2,3})/).map{|y| if y[0]== '==' then y[1]+':1' elsif y[0] == '===' then y[1]+':2' else y[1]+y[0] end }

# [[Category:..|*]],[[Category:..]],[[Category:..|..]]
# [...] []
# * 直前の表現の0回以上の繰り返しにマッチ
# + 直前の表現の1回以上の繰り返しにマッチ
# (...) 正規表現をグループ化
# | この前後にある正規表現のどちらかと一致
# ? 直前の表現の0回または1回の繰り返しにマッチ
# \s 空白文字であるスペース、タブにマッチ
