require "application_system_test_case"

class ModdsTest < ApplicationSystemTestCase
  setup do
    @modd = modds(:one)
  end

  test "visiting the index" do
    visit modds_url
    assert_selector "h1", text: "Modds"
  end

  test "creating a Modd" do
    visit modds_url
    click_on "New Modd"

    fill_in "Note", with: @modd.note
    fill_in "Short", with: @modd.short
    click_on "Create Modd"

    assert_text "Modd was successfully created"
    click_on "Back"
  end

  test "updating a Modd" do
    visit modds_url
    click_on "Edit", match: :first

    fill_in "Note", with: @modd.note
    fill_in "Short", with: @modd.short
    click_on "Update Modd"

    assert_text "Modd was successfully updated"
    click_on "Back"
  end

  test "destroying a Modd" do
    visit modds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Modd was successfully destroyed"
  end
end
