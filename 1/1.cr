calory_groups =
  File
    .read_lines("1/input.txt")
    .chunks(&.empty?)
    .select { |empty, group| !empty }
    .map(&.[1]).map(&.map(&.to_i).sum)

part1 = calory_groups.max
puts "Part 1: #{part1}"

part2 = calory_groups.sort.last(3).sum
puts "Part 2: #{part2}"
