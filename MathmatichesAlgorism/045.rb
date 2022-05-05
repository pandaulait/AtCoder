# 問題文
# N 頂点 M 辺の連結な単純無向グラフが与えられます。グラフの頂点には、それぞれ 1 から N までの番号が振られています。 i 番目の辺は、頂点 a_i
# とb_iを双方向に結んでいます。

# 以下の条件を満たす頂点の個数はいくつあるか出力してください。

# 「自分自身より頂点番号が小さい隣接頂点がちょうど 1 つ存在する」
# https://atcoder.jp/contests/math-and-algorithm/tasks/typical90_bz

N, M = gets.split().map{|s| s.to_i}

list = []
# 理想
# graph = [頂点番号, [隣接番号]]
graph = [0]
N.times do |n|
  graph << [n+1, []]
end

M.times do
  a, b = gets.split().map{|s| s.to_i}
  graph[a][1] << b if a > b
  graph[b][1] << a if b > a
end

a = 0
(1..N).each do |n|
  a += 1 if graph[n][1].size ==1
end

p a
