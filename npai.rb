def npai
  nums = [*("0".."9")]

  category = ["m", "p", "s"]

  npai = category.flat_map{ |c|
    nums.map { |n| n + c }
  }

  not_wupai_nums = npai.reject{ |e| ["5m", "5p", "5s"].include?(e)}

  npai * 3 + not_wupai_nums
end
