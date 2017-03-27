# 27. 内部リンクの除去
# 26の処理に加えて，テンプレートの値からMediaWikiの内部リンクマークアップを除去し，テキストに変換せよ（参考: マークアップ早見表）．

require 'json'

p File.readlines('./jawiki-country.json').map{|line| JSON.parse(line)}.find{|item| item['title'] == 'イギリス'}['text'].scan(/(({{基礎情報.*\n)(.*\n)*(}}))/)[0][0].scan(/(\|)(.*?)(=)(.*?)(\n)/).map{|i| [i[1].strip, i[3].strip]}.map{|key, value| [key,value.gsub(/('{2,5})(.*?)(''{2,5})/){$2}]}.map{|key,value| [key,value
.gsub(/(\[\[)(.*?)(\]\])/){$2}]}.to_h

# ギブアップ
# * 直前の表現の0回以上の繰り返しにマッチ
# (...) 正規表現をグループ化
# | この前後にある正規表現のどちらかと一致
# ? 直前の表現の0回または1回の繰り返しにマッチ