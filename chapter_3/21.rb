# 21. カテゴリ名を含む行を抽出
# 記事中でカテゴリ名を宣言している行を抽出せよ．

require 'json'

puts File.readlines('./jawiki-country.json').map{|line| JSON.parse(line)}.find{|item| item['title'] == 'イギリス'}['text'].scan(/\[\[Category:.+/)