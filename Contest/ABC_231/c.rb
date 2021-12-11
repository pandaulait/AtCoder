N, Q = gets.split().map{|x| x.to_i}
students = gets.split().map{|x| x.to_i}
A = []
Q.times do
  A << gets.to_i
end

# p "a",A, "a"

# 身長順に並び替え、二部探索する

# 身長順に並び替える
students = students.sort
# p students

# 二部探索する

A.each do |q|
  left = -1
  right = N
  while right - left > 1
    mid = left + (right - left) / 2
    # p [left,mid,right]
    if students[mid] <  q
      left = mid
    else
      right = mid
    end
    # p [left,mid,right]
  end

  if left == -1
    puts N
  else
    puts N-left-1
  end
end