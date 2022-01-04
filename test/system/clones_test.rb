require "application_system_test_case"

class ClonesTest < ApplicationSystemTestCase
  setup do
    @clone = clones(:one)
  end

  test "visiting the index" do
    visit clones_url
    assert_selector "h1", text: "Clones"
  end

  test "creating a Clone" do
    visit clones_url
    click_on "New Clone"

    fill_in "Dob", with: @clone.DOB
    fill_in "Name", with: @clone.name
    click_on "Create Clone"

    assert_text "Clone was successfully created"
    click_on "Back"
  end

  test "updating a Clone" do
    visit clones_url
    click_on "Edit", match: :first

    fill_in "Dob", with: @clone.DOB
    fill_in "Name", with: @clone.name
    click_on "Update Clone"

    assert_text "Clone was successfully updated"
    click_on "Back"
  end

  test "destroying a Clone" do
    visit clones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Clone was successfully destroyed"
  end
end
