# 25. テンプレートの抽出
# 記事中に含まれる「基礎情報」テンプレートのフィールド名と値を抽出し，辞書オブジェクトとして格納せよ．

require 'json'
require 'pp'
pp File.readlines('./jawiki-country.json')
         .map{|line| JSON.parse(line)}
         .find{|item| item['title'] == 'イギリス'}['text']
         .scan(/(({{基礎情報)(.*\n)*(}}\n))/)[0][0]
         .scan(/(\|)(.*)(=)(.*)(\n)/)
         .map{|i| [i[1].strip, i[3].strip]}.to_h

## {{基礎情報}} の中で　行頭+|
