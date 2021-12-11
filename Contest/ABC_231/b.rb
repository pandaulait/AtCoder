N = gets.to_i
touhyou = []
N.times do
  touhyou << gets.chomp
end
puts touhyou.group_by(&:itself).map{ |key,value| [key, value.count] }.sort_by {|x| x[1]}[-1][0]

