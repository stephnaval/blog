require "test_helper"

class DisneysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disney = disneys(:one)
  end

  test "should get index" do
    get disneys_url
    assert_response :success
  end

  test "should get new" do
    get new_disney_url
    assert_response :success
  end

  test "should create disney" do
    assert_difference("Disney.count") do
      post disneys_url, params: { disney: { main_character: @disney.main_character, title: @disney.title, year_created: @disney.year_created } }
    end

    assert_redirected_to disney_url(Disney.last)
  end

  test "should show disney" do
    get disney_url(@disney)
    assert_response :success
  end

  test "should get edit" do
    get edit_disney_url(@disney)
    assert_response :success
  end

  test "should update disney" do
    patch disney_url(@disney), params: { disney: { main_character: @disney.main_character, title: @disney.title, year_created: @disney.year_created } }
    assert_redirected_to disney_url(@disney)
  end

  test "should destroy disney" do
    assert_difference("Disney.count", -1) do
      delete disney_url(@disney)
    end

    assert_redirected_to disneys_url
  end
end
