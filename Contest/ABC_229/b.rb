A,B = gets.split().map{|x| x.to_i}

len = A.to_s.size
len = B.to_s.size if A.to_s.size < B.to_s.size

# p A,B

flag  = 0 
len.times do |l|
  # p [(A / (10**l) % 10),(B / (10**l) % 10)]
  if (A / (10**l) % 10) + (B / (10**l) % 10) > 9
    flag = 1
 
  end
end

if flag == 1
  puts "Hard"
else
  puts "Easy"
end
