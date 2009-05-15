# == Schema Information
# Schema version: 20090429091745
#
# Table name: users
#
#  id         :integer(4)      not null, primary key
#  username   :string(255)
#  password   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  validates_uniqueness_of :username
  validates_confirmation_of :password, :on => :create
  
  def self.authenticate(user_info)
    find_by_username_and_password(user_info[:username], user_info[:password])
  end
  
end
