N, M = gets.chomp.split().map{|x| x.to_i}
takahashi = []
(N+1).times do
  takahashi << {path:[]}
end
M.times do
  a = gets.chomp.split().map{|x| x.to_i}
  takahashi[a[0]][:path] << a[1]
  takahashi[a[1]][:path] << a[0]
end
sato = []

(N+1).times do
  sato << {path:[]}
end
M.times do
  a = gets.chomp.split().map{|x| x.to_i}
  sato[a[0]][:path] << a[1]
  sato[a[1]][:path] << a[0]
end


pp sato