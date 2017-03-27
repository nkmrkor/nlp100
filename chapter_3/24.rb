# 24. ファイル参照の抽出
# 記事から参照されているメディアファイルをすべて抜き出せ．

require 'json'

puts File.readlines('./jawiki-country.json').map{|line| JSON.parse(line)}.find{|item| item['title'] == 'イギリス'}['text'].scan(/(\[\[ファイル:)(.*)(\]\])/)
