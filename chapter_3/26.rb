# 26. 強調マークアップの除去
# 25の処理時に，テンプレートの値からMediaWikiの強調マークアップ（弱い強調，強調，強い強調のすべて）を除去してテキストに変換せよ
# ''' 強調（太字）
# ''''' 斜体と強調

require 'json'

puts File.open('jawiki-country.json').readlines.map{|x| JSON.parse(x)}.select{|item| item["title"]=="イギリス"}.to_s.scan(/({{基礎情報.*}})/).

#basic = text.scan(/(({{基礎情報.*\n)(.*\n)*(}}))/)[0][0].scan(/(\|)(.*?)(=)(.*?)(\n)/).map{|i| [i[1].strip,i[3].strip]}.to_h

#puts basic.map{|key,value| [key,value.gsub(/'''/,'')]}

# * 直前の表現の0回以上の繰り返しにマッチ
# (...) 正規表現をグループ化
# | この前後にある正規表現のどちらかと一致
# ? 直前の表現の0回または1回の繰り返しにマッチ
