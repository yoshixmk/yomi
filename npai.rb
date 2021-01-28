def npai
  nums = [*("0".."9")]

  category = ["m", "p", "s"]

  npai = category.flat_map{ |c|
    nums.map { |n| c + n }
  }

  not_wupai_nums = npai.reject{ |e| ["m5", "p5", "s5"].include?(e)}

  npai * 3 + not_wupai_nums
end
