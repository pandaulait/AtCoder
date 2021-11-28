S = []
2.times do
  S << gets.chomp.chars
end
# p S

A = []
count = 0
for i in 0..1
  for j in 0..1
    if S[i][j] == "#"
      A << [i,j]
      count += 1
    end
  end
end
# p A,count

case count
when 2
  if A[0][0] == A[1][0] || A[0][1] == A[1][1]
    puts "Yes"
  else
    puts "No"
  end
when 3
  puts "Yes"
when 4
  puts "Yes"
else
  puts "Yes"
end