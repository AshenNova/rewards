require "application_system_test_case"

class Reward2sTest < ApplicationSystemTestCase
  setup do
    @reward2 = reward2s(:one)
  end

  test "visiting the index" do
    visit reward2s_url
    assert_selector "h1", text: "Reward2s"
  end

  test "creating a Reward2" do
    visit reward2s_url
    click_on "New Reward2"

    fill_in "Price", with: @reward2.price
    fill_in "Reward", with: @reward2.reward
    check "Status" if @reward2.status
    fill_in "Value", with: @reward2.value
    click_on "Create Reward2"

    assert_text "Reward2 was successfully created"
    click_on "Back"
  end

  test "updating a Reward2" do
    visit reward2s_url
    click_on "Edit", match: :first

    fill_in "Price", with: @reward2.price
    fill_in "Reward", with: @reward2.reward
    check "Status" if @reward2.status
    fill_in "Value", with: @reward2.value
    click_on "Update Reward2"

    assert_text "Reward2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Reward2" do
    visit reward2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reward2 was successfully destroyed"
  end
end
