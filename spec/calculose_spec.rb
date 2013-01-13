require "calculus"

describe Calculus::Calc do
  it "simpson's computes correctly" do
    (Calculus::Calc.simpson 0.01, 0, 5 do |x| 2*x end).should eql(25.0)
  end

  it "euler's computes correctly" do
    (Calculus::Calc.euler 0.01, 0,0, 5 do |x,y| 2*x end).should eql(24.95)
  end
end