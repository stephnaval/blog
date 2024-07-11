require "application_system_test_case"

class DisneysTest < ApplicationSystemTestCase
  setup do
    @disney = disneys(:one)
  end

  test "visiting the index" do
    visit disneys_url
    assert_selector "h1", text: "Disneys"
  end

  test "should create disney" do
    visit disneys_url
    click_on "New disney"

    fill_in "Main character", with: @disney.main_character
    fill_in "Title", with: @disney.title
    fill_in "Year created", with: @disney.year_created
    click_on "Create Disney"

    assert_text "Disney was successfully created"
    click_on "Back"
  end

  test "should update Disney" do
    visit disney_url(@disney)
    click_on "Edit this disney", match: :first

    fill_in "Main character", with: @disney.main_character
    fill_in "Title", with: @disney.title
    fill_in "Year created", with: @disney.year_created
    click_on "Update Disney"

    assert_text "Disney was successfully updated"
    click_on "Back"
  end

  test "should destroy Disney" do
    visit disney_url(@disney)
    click_on "Destroy this disney", match: :first

    assert_text "Disney was successfully destroyed"
  end
end
