# 24. ファイル参照の抽出
# 記事から参照されているメディアファイルをすべて抜き出せ．

require 'json'

file_path='./jawiki-country.json'
parsed = []
text = []

open(file_path) do |file|
    file.each_line do |line|
        parsed.push(JSON.parse(line))
    end
end

parsed.select{|item|
  if item["title"] == "イギリス"
    text = item["text"]
  end
}

puts text.scan(/\[\[ファイル:.*/)

