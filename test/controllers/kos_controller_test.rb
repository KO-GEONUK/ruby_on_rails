require "test_helper"

class KosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ko = kos(:one)
  end

  test "should get index" do
    get kos_url
    assert_response :success
  end

  test "should get new" do
    get new_ko_url
    assert_response :success
  end

  test "should create ko" do
    assert_difference("Ko.count") do
      post kos_url, params: { ko: { content: @ko.content, name: @ko.name, number: @ko.number, title: @ko.title } }
    end

    assert_redirected_to ko_url(Ko.last)
  end

  test "should show ko" do
    get ko_url(@ko)
    assert_response :success
  end

  test "should get edit" do
    get edit_ko_url(@ko)
    assert_response :success
  end

  test "should update ko" do
    patch ko_url(@ko), params: { ko: { content: @ko.content, name: @ko.name, number: @ko.number, title: @ko.title } }
    assert_redirected_to ko_url(@ko)
  end

  test "should destroy ko" do
    assert_difference("Ko.count", -1) do
      delete ko_url(@ko)
    end

    assert_redirected_to kos_url
  end
end
