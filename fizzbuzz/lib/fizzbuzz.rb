class FizzBuzz

  def range(num1, num2)
    num1..num2
  end

  def three(num)
    num % 3
  end

  def five(num)
    num % 5
  end

  def fifteen(num)
    num % 15
  end

end

test = FizzBuzz.new

arr = range(1, 100).to_a

if
