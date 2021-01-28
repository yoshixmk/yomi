require "./zpai"
require "./dpai"
require "./npai"

all_pai = npai() + zpai() + dpai()

p all_pai

p all_pai.size

p all_pai.shuffle.take(83)
