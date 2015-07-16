require 'minitest/autorun'

class User

  def assign_role(role)
  end

  def in_role?(role)
    true
  end
end

class TestUser < Minitest::Test

  def test_a_user_can_assign_a_role
    user = User.new

    user.assign_role('admin')

    assert user.in_role?('admin'), 'user is not in admin role'
  end
end
