# 21. カテゴリ名を含む行を抽出
# 記事中でカテゴリ名を宣言している行を抽出せよ．

require 'json'

file_path='./jawiki-country.json'
parsed = []
text = []

open(file_path) do |file|
    file.each_line do |line|
        parsed.push(JSON.parse(line))
    end
end

parsed.select do |item|
  if item["title"] == "イギリス"
    text = item["text"]
  end
end

puts text.scan(/\[\[Category:.*/)

