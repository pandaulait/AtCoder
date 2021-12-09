string = gets.chomp.chars

flag = 0
i = 0
while flag == 0
  if string[i] == "o"
    flag = 1
  else
    flag = 2 if i > 2
  end
  i += 1
end

flag = 1 if string.size < 3 && flag == 2

a = ["x","x","o"]
if flag == 2
  puts "No"
else
  # puts i
  j = 0
  while flag == 1 && (i < string.size)
    # p [i,j,string[i],a[j]]
    flag = 2 if string[i] != a[j]
    if j == 2
      j = 0
    else
      j += 1
    end
    i += 1
  end

  if flag == 1
    puts "Yes"
  else
    puts "No"
  end

end
