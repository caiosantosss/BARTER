require 'test_helper'

class OfferingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get offerings_new_url
    assert_response :success
  end

  test "should get edit" do
    get offerings_edit_url
    assert_response :success
  end

end
