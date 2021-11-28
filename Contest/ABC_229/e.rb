N, M = gets.split().map{|x|  x.to_i}
AB = []
road_map = [{road: []}]
N.times do
  road_map << {road: []}
end


M.times do
  AB << gets.split().map{|x| x.to_i}
  road_map[AB[-1][0]][:road] << AB[-1][1]
  road_map[AB[-1][1]][:road] << AB[-1][0]
end
# pp road_map

def graph_count(road_map, n)
  count = 0
  m = N
  array = (n..m).to_a
  # p array
  graphes = []
  while array != []
    a = array.pop
    # p a
    graphes << [a]
    count += 1
    # p array
    # puts "count" + count.to_s
    non_checked_roads = []
    non_checked_roads += [a]
    # p ["array",array,"non",non_checked_roads]
    while non_checked_roads.size > 0
      # p ["array",array,"non",non_checked_roads]
      r = non_checked_roads.pop
      roads = road_map[r][:road]
      roads.each do |r|
        if array.include?(r)
          graphes[-1] << r
          array.delete(r)
          non_checked_roads << r
        end
      end
      # pp graphes,array
    end
  end
  count
end


N.times do |n|
  p graph_count(road_map, n+2)
  # pp road_map
end