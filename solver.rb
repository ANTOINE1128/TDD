class Solver
  def factorial(n)
    return 1 if n.zero?

    raise ArgumentError, 'Argument must be a non-negative integer' if n.negative?

    result = 1
    (1..n).each { |i| result *= i }
    result
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(number)
    return 'fizzbuzz' if (number % 3).zero? && (number % 5).zero?
    return 'fizz' if (number % 3).zero?
    return 'buzz' if (number % 5).zero?

    number.to_s
  end
end

sample = Solver.new
puts sample.factorial(4)
