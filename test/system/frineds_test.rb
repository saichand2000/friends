require "application_system_test_case"

class FrinedsTest < ApplicationSystemTestCase
  setup do
    @frined = frineds(:one)
  end

  test "visiting the index" do
    visit frineds_url
    assert_selector "h1", text: "Frineds"
  end

  test "creating a Frined" do
    visit frineds_url
    click_on "New Frined"

    fill_in "Email", with: @frined.email
    fill_in "First name", with: @frined.first_name
    fill_in "Last name", with: @frined.last_name
    fill_in "Phone", with: @frined.phone
    fill_in "Twitter", with: @frined.twitter
    click_on "Create Frined"

    assert_text "Frined was successfully created"
    click_on "Back"
  end

  test "updating a Frined" do
    visit frineds_url
    click_on "Edit", match: :first

    fill_in "Email", with: @frined.email
    fill_in "First name", with: @frined.first_name
    fill_in "Last name", with: @frined.last_name
    fill_in "Phone", with: @frined.phone
    fill_in "Twitter", with: @frined.twitter
    click_on "Update Frined"

    assert_text "Frined was successfully updated"
    click_on "Back"
  end

  test "destroying a Frined" do
    visit frineds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Frined was successfully destroyed"
  end
end
