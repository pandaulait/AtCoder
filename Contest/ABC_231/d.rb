N,M = gets.split().map{|x| x.to_i}

AB= []
M.times do
  AB << gets.split().map{|x| x.to_i}
end

answer = []
N.times do
  answer << 0
end
flag  =0
AB.each do |a,b|
  answer[a-1] += 1
  answer[b-1] += 1
  if answer[a-1] > 2
    flag = 1
    break
  end
  if answer[b-1] > 2
    flag = 1 
    break
  end
end

if flag == 1
  puts "No"
else
  puts "Yes"
end