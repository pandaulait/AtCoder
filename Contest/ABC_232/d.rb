H,W = gets.split().map{|x| x.to_i}
map = []
H.times do
  map << gets.chomp.chars.map{|x| {condition:x, checked: false, number:0}}
  map[-1] << {condition:"#", checked: false, number:0}
end
map << Array.new(W+1, {condition:"#",checked:true, number:0})
# pp map

c = [[0,0]]
max = 0
while c.size > 0
  a = c.pop
  # 下を見る関数
  # p c,a
  if map[a[0]+1][a[1]][:condition] == "." && map[a[0]+1][a[1]][:checked] == false
    c << [a[0]+1,a[1]]
    map[a[0]+1][a[1]][:checked] = true
    map[a[0]+1][a[1]][:number] = map[a[0]][a[1]][:number] + 1
    max = map[a[0]+1][a[1]][:number] if max < map[a[0]+1][a[1]][:number]
  end
  #右を見る関数

  if map[a[0]][a[1]+1][:condition] == "." && map[a[0]][a[1]+1][:checked] == false
    c << [a[0],a[1]+1]
    map[a[0]][a[1]+1][:checked] = true
    map[a[0]][a[1]+1][:number] = map[a[0]][a[1]][:number] + 1
    max = map[a[0]][a[1]+1][:number] if max < map[a[0]][a[1]+1][:number]
  end
end
puts max+1



