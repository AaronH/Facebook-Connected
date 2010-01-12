require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end

  should_have_db_column :fb_user_id
  should_have_db_column :name

  context "an existing user" do
    setup do
      @user = Factory :user
    end
    should_validate_uniqueness_of :fb_user_id
    should_validate_presence_of :name

    should "return a display name" do
      assert_equal @user.display_name, 'Aaron'
    end
    
  end
  
  

end
