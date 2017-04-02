# 29. 国旗画像のURLを取得する
# テンプレートの内容を利用し，国旗画像のURLを取得せよ．（ヒント: MediaWiki APIのimageinfoを呼び出して，ファイル参照をURLに変換すればよい）

# https://en.wikipedia.org/w/api.php?action=query&titles=Image&format=json
require 'json'

p File.readlines('./jawiki-country.json')
         .map{|line| JSON.parse(line)}
         .find{|item| item['title'] == 'イギリス'}['text']
         .scan(/(({{基礎情報)(.*\n)*(}}\n))/)[0][0]
         .scan(/(\|)(.*)(=)(.*)(\n)/)
         .map{|i| [i[1].strip, i[3].strip]}.to_h
         .find{|key, value| key == '国旗画像'}
