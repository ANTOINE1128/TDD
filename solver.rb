class Solver
  def factorial(n)
    return 1 if n == 0

    raise ArgumentError, "Argument must be a non-negative integer" if n < 0

    result = 1
    (1..n).each { |i| result *= i }
    result
  end
end

sample = Solver.new
puts sample.factorial(4)