require "application_system_test_case"

class KosTest < ApplicationSystemTestCase
  setup do
    @ko = kos(:one)
  end

  test "visiting the index" do
    visit kos_url
    assert_selector "h1", text: "Kos"
  end

  test "should create ko" do
    visit kos_url
    click_on "New ko"

    fill_in "Content", with: @ko.content
    fill_in "Name", with: @ko.name
    fill_in "Number", with: @ko.number
    fill_in "Title", with: @ko.title
    click_on "Create Ko"

    assert_text "Ko was successfully created"
    click_on "Back"
  end

  test "should update Ko" do
    visit ko_url(@ko)
    click_on "Edit this ko", match: :first

    fill_in "Content", with: @ko.content
    fill_in "Name", with: @ko.name
    fill_in "Number", with: @ko.number
    fill_in "Title", with: @ko.title
    click_on "Update Ko"

    assert_text "Ko was successfully updated"
    click_on "Back"
  end

  test "should destroy Ko" do
    visit ko_url(@ko)
    click_on "Destroy this ko", match: :first

    assert_text "Ko was successfully destroyed"
  end
end
