# 26. 強調マークアップの除去
# 25の処理時に，テンプレートの値からMediaWikiの強調マークアップ（弱い強調，強調，強い強調のすべて）を除去してテキストに変換せよ
# '' 他との区別（斜体）
# ''' 強調（太字）
# ''''' 斜体と強調

require 'json'

puts File.readlines('./jawiki-country.json')
         .map{|line| JSON.parse(line)}
         .find{|item| item['title'] == 'イギリス'}['text']
         .scan(/(({{基礎情報)(.*\n)*(}}\n))/)[0][0]
         .scan(/(\|)(.*)(=)(.*)(\n)/)
         .map{|i| [i[1].strip, i[3].strip]}
         .map{|key, value| [key,value.gsub(/('{2,5})(.*)('{2,5})/){$2}]}.to_h
