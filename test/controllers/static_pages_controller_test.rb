 require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    get static_pages_home_url #GETリクエストを受け付けるか？
    assert_response :success
  end #リクエストに対するレスポンスは成功か？

  test "should get help" do
    get static_pages_help_url
    assert_response :success
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | Ruby on Rails Tutorial Sample App" #追加分（help,aboutにも追加する）
  end

  test "should get root" do
    get root_url
    assert_response :success
  end
end