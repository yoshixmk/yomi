nums = [*("0".."9")]

category = ["m", "p", "s"]

npai = category.flat_map{ |c|
  nums.map { |n| c + n }
}

nums_not_wupai = npai.reject{ |e| ["m5", "p5", "s5"].include?(e)}

npai = npai * 3 + nums_not_wupai

p npai
