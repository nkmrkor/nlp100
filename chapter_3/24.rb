# 24. ファイル参照の抽出
# 記事から参照されているメディアファイルをすべて抜き出せ．

require 'json'

puts File.open('jawiki-country.json').readlines.map{|x| JSON.parse(x)}.select{|item| item["title"]=="イギリス"}.to_s.scan(/(\[\[ファイル:.*?\]\])/)
