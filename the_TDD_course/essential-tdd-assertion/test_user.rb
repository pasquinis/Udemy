require 'minitest/autorun'

class User

  def initialize
    @roles = []
  end

  def assign_role(role)
     @roles.push(role)
  end

  def in_role?(role)
    @roles.each do |assigned_role|
        if assigned_role == role
          return true
        end
    end
    return false
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

    user.assign_role('user')

    assert !user.in_role?('admin'), 'user is in admin role'
  end

  def test_user_can_be_in_two_role
    user = User.new

    user.assign_role('admin')
    user.assign_role('user')

    assert user.in_role?('admin'), 'user is not in admin role'
    assert user.in_role?('user'), 'user is not in user role'
  end


  def test_user_can_be_in_multiple_role
    user = User.new

    user.assign_role('admin')
    user.assign_role('user')
    user.assign_role('professor')
    user.assign_role('student')

    assert user.in_role?('admin'), 'user is not in admin role'
    assert user.in_role?('user'), 'user is not in user role'
    assert user.in_role?('professor'), 'user is not in professor role'
    assert user.in_role?('student'), 'user is not in student role'
  end
end
