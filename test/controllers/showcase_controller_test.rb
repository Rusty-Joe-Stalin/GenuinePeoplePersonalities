require 'test_helper'

class ShowcaseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get showcase_index_url
    assert_response :success
  end

  test "should get show" do
    get showcase_show_url
    assert_response :success
  end

  test "should get category" do
    get showcase_category_url
    assert_response :success
  end

end
