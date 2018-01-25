require_relative("../general_thing")

describe "is_palindrome" do

  it "should be true if input is racecar" do
    expect(is_palindrome?("racecar")).to be(true)
  end

  it "should be false if input is palindrome" do
    expect(is_palindrome?("palindrome")).to be(false)
  end

  it "should be false if input is an empty string" do
    expect(is_palindrome?("")).to be(false)
  end

  it "should be true if input has one character" do
    expect(is_palindrome?("a")).to be(true)
  end

  it "should not care about case" do
    expect(is_palindrome?("Ada")).to be(true)
  end

  it "should not care about spaces" do
    expect(is_palindrome?("  a man a plan a canal panama  ")).to be(true)
  end

  it "should not care about spaces or case together" do
    expect(is_palindrome?("  A man A plan A canal panama  ")).to be(true)
  end

  it "should not care about special characters" do
    expect(is_palindrome?("á man A plan A canal panamá")).to be(true)
  end

  it "should not care about punctuation" do
    expect(is_palindrome?("a man a plan a canal, panama!")).to be(true)
  end

  it "should raise an error if the input is a number" do
    expect { is_palindrome?(4) }.to raise_error(ArgumentError)
  end

  it "should work and return true if the input is a number in a string" do
    expect(is_palindrome?("4")).to be(true)
  end

  it "should work and return false if the input is 42" do
    expect(is_palindrome?("42")).to be(false)
  end

end

describe "factorial" do

  ## FACTORIAL

  # 1. normal things

  it "should return 6 when given 3" do
    expect(factorial(3)).to be(6)
  end

  # 2. input/output space

  it "should return 1 when given 0" do
    expect(factorial(0)).to be(1)
  end

  it "should return 120 when given 5" do
    expect(factorial(5)).to be(120)
  end

  it "should return 6227020800 when given 13" do
    expect(factorial(13)).to be(6227020800)
  end

  # 4. extreme edge cases

  it "should fail if given negative numbers" do
    expect { factorial(-1) }.to raise_error(ArgumentError)
    expect { factorial(-100) }.to raise_error(ArgumentError)
  end

  it "should fail if given nil" do
    expect { factorial(nil) }.to raise_error(ArgumentError)
  end

  it "should fail if given a string" do
    expect { factorial("") }.to raise_error(ArgumentError)
  end

  it "should fail if the output is larger than 10000" do
    expect { factorial(10001) }.to raise_error(RangeError)
    expect { factorial(10000) }.not_to raise_error

  end

end
