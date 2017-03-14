# 05. n-gram
# 与えられたシーケンス（文字列やリストなど）からn-gramを作る関数を作成せよ．
# この関数を用い，"I am an NLPer"という文から単語bi-gram，文字bi-gramを得よ．

# http://d.hatena.ne.jp/jetbead/20110904/1315147133
# Enumerableモジュールは、配列やハッシュなど集合を表すクラスに数え上げや検索などのメソッドを提供します
# each_consメソッドは、引数nで指定した数の要素を繰り返し取り出して、ブロックを実行します。ブロック引数arrには、取り出した要素が配列で入ります。

str = "I am an NLPer"

def ngram(words,n)
  words.each_cons(n).to_a
end

print ngram(str.chars, 2)
#print str.split(/\W+/).ngram(2)
