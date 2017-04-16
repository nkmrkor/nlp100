# 29. 国旗画像のURLを取得する
# テンプレートの内容を利用し，国旗画像のURLを取得せよ．（ヒント: MediaWiki APIのimageinfoを呼び出して，ファイル参照をURLに変換すればよい）

# Examples:
# Fetch information about the current version of File:Albert Einstein Head.jpg.
# api.php?action=query&titles=File:Albert%20Einstein%20Head.jpg&prop=imageinfo

require 'json'
require 'net/http'
require 'uri'

image_file = {}
image_file = File.readlines('./jawiki-country.json')
         .map{|line| JSON.parse(line)}
         .find{|item| item['title'] == 'イギリス'}['text']
         .scan(/(({{基礎情報)(.*\n)*(}}\n))/)[0][0]
         .scan(/(\|)(.*)(=)(.*)(\n)/)
         .map{|i| [i[1].strip, i[3].strip]}
         .map{|key, value| [key,value.gsub(/('{2,5})(.*)('{2,5})/){$2}]}
         .map{|key, value| [key,value.gsub(/(\[\[)(.*)(\]\])/){$2}]}.to_h["国旗画像"]
puts JSON.parse(Net::HTTP
         .get(URI
         .parse(URI
         .escape("https://www.mediawiki.org/w/api.php?action=query&format=json&titles=Image:#{image_file}&prop=imageinfo&iiprop=url")
         )))['query']['pages']['-1']['imageinfo'][0]['url']
