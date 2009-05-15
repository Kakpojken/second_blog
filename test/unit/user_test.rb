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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
