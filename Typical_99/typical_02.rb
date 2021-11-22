# 正しい括弧列の辞書式並べ方

N = gets.to_i

return if N % 2 == 1

def solve(c)
  dep = 0
  for i in 0..(c.size - 1)
    if c[i] == "("
      dep += 1
    else
      dep -= 1
    end
    return false if dep < 0
  end
  return true if dep == 0
  return false
end

for i in 1..1<<N
  c = ""
  for j in 0..N-1
    # 左にjシフトさせて2^jが0か判定
    if (i & (1 << j)) == 0
      c = "(" + c
    else
      c = ")" + c
    end
  end

  puts c if solve(c) == true
end