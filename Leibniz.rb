require "benchmark"

#ライプニッツ計算メソッド
def calc_leibniz(num)
	#円周率
	pi = 0.0
	#符号
	iterator = 1.0
	
	if(num < 1.0)
		return 0
	end

	#計算メイン
	for i in 0..num do 
		pi += iterator / (2.0 * i.to_f + 1.0)
		iterator *= (-1.0)
	end
	return (pi * 4.0)
end

puts"ライプニッツの公式を用いて円周率を計算します。"
print"繰り返す回数を入力してください >> "
ret = 0.0

#数値入力
input = gets.to_i

#実行時間計測
result = Benchmark.realtime do
	#計算丸投げ
	ret = calc_leibniz(input)
end

#結果表示
puts"#{ret}"

#実行時間表示
puts"#{result}"

