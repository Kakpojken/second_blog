# == Schema Information
# Schema version: 20090429091745
#
# Table name: comments
#
#  id         :integer(4)      not null, primary key
#  post_id    :integer(4)
#  name       :string(255)
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#

class Comment < ActiveRecord::Base
  
  belongs_to :post
  
  VALID_TAGS = %w(a acronym b strong i em li ul ol h1 h2 h3 h4 h5 h6 blockquote br cite sub sup ins p)
  VALID_ATTRIBUTES = %w(href title)
end
