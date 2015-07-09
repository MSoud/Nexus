require 'test_helper'

class MailAssociationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = Account.new(name:"Michael", email:"MJackson@mail.com")
    @steve = accounts(:first)
    @max = accounts(:second)
  end
  
  test "" do
    en
  
end
