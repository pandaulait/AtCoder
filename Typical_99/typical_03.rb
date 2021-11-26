N = gets.to_i
AB = []
road_map = []
(N+1).times do ||
  road_map.push({reached: false, road: [], distance: 0})
end
(N-1).times do |n|
  ab = gets.split().map{|x| x.to_i}
  road_map[ab[0]][:road].push(ab[1])
  road_map[ab[1]][:road].push(ab[0])
end




def reserach_distance(road_map,start)
  state  = [{here: start, distance: 0}]# 現在地　距離　= {here: int, distance: int}

  road_map[start][:reached] = true
  road_map[start][:distance] = 0
  point = {index: 0, distance: 0}
  while state != [] do
    s = state.pop
    roads = road_map[s[:here]][:road]
    roads.each do |r|
      if road_map[r][:distance] > s[:distance] + 1 || road_map[r][:reached] == false
        state.push({here: r, distance: s[:distance]+1})
        road_map[r][:reached] = true
        road_map[r][:distance] = s[:distance] + 1
        if point[:distance] < s[:distance] + 1
          point[:index] = r
          point[:distance] = s[:distance] + 1
        end
      end
    end
  end
  road_map[0][:road] = point[:index]
  road_map[0][:distance] = point[:distance]
  return road_map
end

reserach_distance(road_map, 1)

road_map = road_map.map{|r| {reached: false, road: r[:road], distance: 0} }

# pp reserach_distance(road_map, road_map[0][:road])
p reserach_distance(road_map, road_map[0][:road])[0][:distance] + 1