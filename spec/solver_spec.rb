require_relative '../solver'

describe Solver do

  before :each do
    @fact = Solver.new
  end

  context "Given 3" do
    it "Should return 6" do
      expect(@fact.factorial(3)).to be 6
    end
  end

  context "Given 0" do
    it "Should return 1" do
      expect(@fact.factorial(0)).to be 1
    end
  end

  context "Given -3" do
    it "Should raise ArgumentError" do
      expect(@fact.factorial(-3)).raise_error("ArgumentError")
    end
  end

end