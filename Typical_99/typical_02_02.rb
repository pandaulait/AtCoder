# 正しい括弧列の辞書式並べ方
# 再起メソッド


N = gets.to_i

return if N % 2 == 1


def solve(n, s, answer)
  return "" if n < 1
  if n == 2
    return "()"
    # puts s
  else
    list = []
    (n/2).downto(1) do |i|
      list << i*2
    end
    # p [n,list]
    list.each do |l|
      # puts n.class
      s = "(" << solve(l-2, s, [answer]) << ")" << solve(n-l, s, [answer])
      answer << s
      if s.size >= N
        puts s
      else
        return s
      end
    end
  end
end


solve(N, "", [])
# answer = []
# s = ""
# aa = [6,4,2]
# aa.each do |j|
#   s = "(" << solve(j-2, s, [answer]) << ")" << solve(6-j, s, [answer])
#   p s
# end