class Critterpost < ActiveRecord::Base
  belongs_to :user
  validates :content, :presence => true, :length => {:maximum => 140}
  attr_accessible :content, :user_id
end
