require 'spec_helper'

describe Critterpost do
  it "should create a Critterpost given valid attributes" do
    critterpost = Factory.build(:critterpost)
    critterpost.should be_valid
  end

  it "should reject a Critterpost without content" do
    critterpost = Factory.build(:critterpost, :content => "")
    critterpost.should_not be_valid
  end

  it "should reject Critterposts with too many characters" do
    long_content = "a" * 141
    critterpost = Factory.build(:critterpost, :content => long_content)
    critterpost.should_not be_valid
  end
end
