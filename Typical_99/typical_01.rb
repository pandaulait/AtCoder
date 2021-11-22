# 羊羹パーティ
N, L=gets.split().map{|a| a.to_i}
K = gets.chomp.to_i

A= gets.split().map{|a| a.to_i}
# p N,L,K,A
def solve(m)
  count = 0
  pre = 0
  for i in 0..N-1 do
    if (A[i] - pre >= m && L - A[i] >= m)
      count += 1
      pre = A[i]
    end
  end

  return true if count >= K

  false
end

left = -1
right = L+1
# -1..L+１の中から、条件を満たす最大値を求める
# 二部探索法はソート済みの範囲から、条件を満たす最大値最小値を求める際にも用いられる

while right - left >1
  mid = left+ (right-left)/ 2
  if solve(mid) == false
    right = mid
  else
    left = mid
  end
end
puts left
