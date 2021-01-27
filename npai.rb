nums = [*("0".."9")]

category = ["m", "p", "s"]

npai = category.flat_map{ |c|
  nums.map { |n| c + n }
}

p npai
