require 'rspec'
require_relative '4'

describe "#palindrome?" do
  it { 9009.should be_palindrome }
  it { 9099.should_not be_palindrome }
end

describe "#products" do
  it "returns all the unique products (largest first)" do
    products(3).should == [9, 6, 4, 3, 2, 1]
  end
end

describe "#largest" do
  it "returns the largest palndrome" do
    largest(99).should == 9009
  end
end