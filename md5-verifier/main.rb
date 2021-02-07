require "./zpai"
require "./dpai"
require "./npai"
require "./pg"

all_pai = npai() + zpai() + dpai()

conn = open()

i = 0
while(1) do
  shuffled = 100000.times.map{|i| all_pai.shuffle.take(83).join()}

  insert(shuffled, conn)
  i += 1
  p i
end

close(conn)
