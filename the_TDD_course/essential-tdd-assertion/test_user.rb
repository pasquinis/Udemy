require 'minitest/autorun'

class User

  def assign_role(role)
  end

  def in_role?(role)
    true
  end
end

class TestUser < Minitest::Test

  def test_user_is_in_admin_role
    user = User.new

    user.assign_role('admin')

    assert user.in_role?('admin'), 'user is not in admin role'
  end

  def test_user_is_not_in_admin_role
    user = User.new

    user.assign_role('admin')

    assert !user.in_role?('admin'), 'user is in admin role'
  end
end
