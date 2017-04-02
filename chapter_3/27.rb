# 27. 内部リンクの除去
# 26の処理に加えて，テンプレートの値からMediaWikiの内部リンクマークアップを除去し，テキストに変換せよ（参考: マークアップ早見表）．

require 'json'

puts File.readlines('./jawiki-country.json')
         .map{|line| JSON.parse(line)}
         .find{|item| item['title'] == 'イギリス'}['text']
         .scan(/(({{基礎情報)(.*\n)*(}}\n))/)[0][0]
         .scan(/(\|)(.*)(=)(.*)(\n)/)
         .map{|i| [i[1].strip, i[3].strip]}
         .map{|key, value| [key,value.gsub(/('{2,5})(.*)('{2,5})/){$2}]}
         .map{|key, value| [key,value.gsub(/(\[\[)(.*)(\]\])/){$2}]}.to_h


# ギブアップ
#[[記事名]]
#[[記事名|表示文字]]
#[[記事名#節名|表示文字]]
