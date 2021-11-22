# 二部探索について勉強せねばばば
# 20 歳以上 36 歳未満であることはわかっている A さんの年齢を 4 回の質問でズバリ当てます！


left = 20
right = 36
answer = 23

while (right - left > 1) do
  mid = left + (right- left)/2

  b = false
  b = true if mid <= answer
  if b == true
    left = mid # mid歳以上なら、mid歳以上right歳未満
  else
    right = mid # mid歳以下なら、left歳以上mid歳未満
  end
end
p left
