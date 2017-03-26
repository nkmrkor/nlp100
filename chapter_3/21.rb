# 21. カテゴリ名を含む行を抽出
# 記事中でカテゴリ名を宣言している行を抽出せよ．

require 'json'

puts File.open('jawiki-country.json').readlines.map{|x| JSON.parse(x)}.select{|item| item["title"]=="イギリス"}.to_s.scan(/\[\[Category:.*/)
