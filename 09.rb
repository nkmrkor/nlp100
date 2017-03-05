# 09. Typoglycemia
# スペースで区切られた単語列に対して，各単語の先頭と末尾の文字は残し，それ以外の文字の順序をランダムに並び替えるプログラムを作成せよ．ただし，長さが４以下の単語は並び替えないこととする．適当な英語の文（例えば"I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind ."）を与え，その実行結果を確認せよ．

# shuffleメソッドは、配列の要素の順番をランダムに入れ替えた新しい配列を返します
# charsメソッドは、文字列中の文字を繰り返し取り出します。ブロック引数charに1文字を入れながら、文字数だけブロックを繰り返します。戻り値はレシーバ自身です。
# joinメソッドは、配列の各要素を文字列に変換し、引数sepを区切り文字として結合した文字列を返します。

str = "I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind ."
def random(str)
  str.split(" ").map {|word|
    if word.length <= 4
      word
    else
      [word[0], word[1..-2].chars.shuffle, word[-1]].join
    end
  }.join(' ')
end

puts random(str)
