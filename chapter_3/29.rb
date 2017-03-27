# 29. 国旗画像のURLを取得する
# テンプレートの内容を利用し，国旗画像のURLを取得せよ．（ヒント: MediaWiki APIのimageinfoを呼び出して，ファイル参照をURLに変換すればよい）

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

puts text.scan(/(({{基礎情報.*\n)(.*\n)*(}}))/)[0][0].scan(/(\|)(.*?)(=)(.*?)(\n)/).map{|i| [i[1].strip,i[3].strip]}.to_h


# * 直前の表現の0回以上の繰り返しにマッチ
# (...) 正規表現をグループ化
# | この前後にある正規表現のどちらかと一致
# ? 直前の表現の0回または1回の繰り返しにマッチ