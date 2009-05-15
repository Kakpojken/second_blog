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

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
