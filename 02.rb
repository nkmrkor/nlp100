# 02. 「パトカー」＋「タクシー」＝「パタトクカシーー」
#「パトカー」＋「タクシー」の文字を先頭から交互に連結して文字列「パタトクカシーー」を得よ．

str = ""
str1 = "パトカー"
str2 = "タクシー"
for i in 0..(str1.length-1) do
  str << str1[i]
  str << str2[i]
end
puts str
