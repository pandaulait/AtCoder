al_list = ('a'..'z').to_a


N = 5
graph = []
(0..N).each do |num|
  root = []
  rand(1..3).times do
    root << rand(0..N)
  end
  root.delete(num)
  graph << [al_list[num], num, root]
end
pp graph
