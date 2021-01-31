require "./zpai"
require "./dpai"
require "./npai"
require "./pg"

all_pai = npai() + zpai() + dpai()

conn = open()

# wait ctrl + d
while(!STDIN.eof) do
  shuffled = 1000.times.map{|i| all_pai.shuffle.take(83).join()}

  insert(shuffled, conn)
end

close(conn)
