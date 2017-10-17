class FizzBuzz

  def make_array
    (1..100).to_a
  end

  def multiple_three
    "Fizz"
  end

  def multiple_five
    "Buzz"
  end

  def multiple_fifteen
    "FizzBuzz"
  end

  def print item
    puts item
  end

  def logic
    make_array.map do |i|
      if i % 15 == 0
        multiple_fifteen
      elsif i % 5 == 0
        multiple_five
      elsif i % 3 == 0
        multiple_three
      else
        i
      end
    end
  end
end
