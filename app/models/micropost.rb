class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id

  belongs_to :user

  validate :content, :length => {:maxinum => 140}
end
