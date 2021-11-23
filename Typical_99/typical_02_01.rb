# 正しい括弧列の辞書式並べ方
# 2206s -> 726s 最初から2進数で考えてしまえば早いのでは？-> 当たり！


N = gets.to_i

return if N % 2 == 1

def solve(i)
  dep = 0
  (N-1).downto(0) do |j|
    # puts [i,c]
    if (i & (1 << j)) == 0
      dep += 1
    else
      dep -= 1
    end
    return false if dep < 0
  end
  return true if dep == 0
  return false
end


# for i in 1..1<<N
# forよりもtimesの方が早いらしい
(1<<N).times{ |i|
  if solve(i) == true
    c = ("%#{N}b" % i )
    c.gsub!("0","(") # ここをもうちょっとどうにかしたい
    c.gsub!(" ","(")
    c.gsub!("1",")")
    puts c
  end
}
# 2進数表示して、桁数指定
# （”%04b” % 2）
# -> 0010
# a = 3
# （”%#{a}b” % 2)
# -> 010