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

  describe "#reverse_string" do
    context "Given 'hello'" do
      it "Should return 'olleh'" do
        expect(@fact.reverse_string('hello')).to eq 'olleh'
      end
    end
  end

  describe "#fizzbuzz" do
    context "Given 3" do
      it "Should return 'fizz'" do
        expect(@fact.fizzbuzz(3)).to eq 'fizz'
      end
    end

    context "Given 5" do
      it "Should return 'buzz'" do
        expect(@fact.fizzbuzz(5)).to eq 'buzz'
      end
    end

    context "Given 15" do
      it "Should return 'fizzbuzz'" do
        expect(@fact.fizzbuzz(15)).to eq 'fizzbuzz'
      end
    end

    context "Given 7" do
      it "Should return '7'" do
        expect(@fact.fizzbuzz(7)).to eq '7'
      end
    end
  end
end