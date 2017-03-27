# 23. セクション構造
# 記事中に含まれるセクション名とそのレベル（例えば"== セクション名 =="なら1）を表示せよ．

require 'json'

p File.readlines('./jawiki-country.json')
      .map{|line| JSON.parse(line)}
      .find{|item| item['title'] == 'イギリス'}['text']
      .scan(/(={2,6})(.*?)(={2,6})/)
      .tap{|x| p x}.map{|i| [i[0].size-1, i[1].strip]}


# /\A(={2,6})[^=]+\1\z/
# \1 後方参照