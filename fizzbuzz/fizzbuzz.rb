class FizzBuzz

  def make_array
    (1..100).to_a
  end

  def logic
    make_array.map do |i|
      if i % 15 == 0
        'FizzBuzz'
      elsif i % 5 == 0
        'Buzz'
      elsif i % 3 == 0
        'Fizz'
      end
    end
  end
end

def print_to_screen
  make_array.each do |item|
    puts item
  end
end
