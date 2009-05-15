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

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
