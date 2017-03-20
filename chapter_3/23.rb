# 23. セクション構造
# 記事中に含まれるセクション名とそのレベル（例えば"== セクション名 =="なら1）を表示せよ．

require 'json'

file_path='./jawiki-country.json'
parsed = []
text = []
section = []

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

text.scan(/(^=+)(.*?)(=+)/).each do |w1,w2,w3|
  if w1 == '=='
    puts w2 + ':1'
  elsif w1 == '==='
    puts w2 + ':2'
  else
    puts w2 + ':3'
  end
end

# [[Category:..|*]],[[Category:..]],[[Category:..|..]]
# [...] []内にいずれか1文字にマッチ
# [^...] []内に含まれない1文字にマッチ
# * 直前の表現の0回以上の繰り返しにマッチ
# + 直前の表現の1回以上の繰り返しにマッチ
# (...) 正規表現をグループ化
# | この前後にある正規表現のどちらかと一致
# ? 直前の表現の0回または1回の繰り返しにマッチ
# \s 空白文字であるスペース、タブにマッチ
