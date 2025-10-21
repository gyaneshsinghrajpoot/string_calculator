class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
     delimiter, number = if numbers.start_with?("//")
      [Regexp.escape(numbers[2]), numbers.split("\n", 2).last]
    else
      [/[\n,]/, numbers]
    end
    nums = number.split(/#{delimiter}/).map(&:to_i)

    negatives = nums.select(&:negative?)
    raise "negative numbers not allowed: #{negatives.join(',')}" if negatives.any?
    nums.sum
  end
end 