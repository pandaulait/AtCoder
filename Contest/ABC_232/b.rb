
def alphabet_number(input)
  index = ('a'..'z').to_a.find_index(input) + 1
end
a_inputs = gets.chomp.chars.map{|x| [x,alphabet_number(x)]}
b_inputs = gets.chomp.chars.map{|x| [x,alphabet_number(x)]}


def compare_string(a,b,i)
  aa = a[i+1][1] - a[i][1]
  bb = b[i+1][1] - b[i][1]
  aa += 26 if aa < 0
  bb += 26 if bb < 0
  # puts aa,bb
  if aa == bb
    return true
  else
    return false
  end
end


if a_inputs.size == 1
  puts "Yes"
elsif a_inputs.size >= 2
  i = 0
  flag = 0
  while i < a_inputs.size - 1 && flag == 0
    flag = 1 unless compare_string(a_inputs,b_inputs,i) == true
    i += 1
  end
  if flag == 0
    puts "Yes"
  else
    puts "No"
  end
end



