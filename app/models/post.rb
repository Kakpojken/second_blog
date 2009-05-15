# == Schema Information
# Schema version: 20090429091745
#
# Table name: posts
#
#  id         :integer(4)      not null, primary key
#  topic      :string(255)
#  post       :text
#  author     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Post < ActiveRecord::Base
  
  acts_as_voteable
  
  validates_presence_of :post
  
  cattr_reader :per_page
  @@per_page = 5

  # NOTE: has_comments? is no longer provided by Rails 2.0.
  #       See the has_comments? method below.
  has_many :comments

  ##
  # Class method.
  
  def self.find_descending
    find(:all, :order => "created_at DESC")
  end
  
  def has_comments?
    !comments.nil?
  end
  
  def has_votes?
    !votes.nil?
  end
    
end
