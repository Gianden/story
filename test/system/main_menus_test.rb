require "application_system_test_case"

class MainMenusTest < ApplicationSystemTestCase
  setup do
    @main_menu = main_menus(:one)
  end

  test "visiting the index" do
    visit main_menus_url
    assert_selector "h1", text: "Main Menus"
  end

  test "creating a Main menu" do
    visit main_menus_url
    click_on "New Main Menu"

    click_on "Create Main menu"

    assert_text "Main menu was successfully created"
    click_on "Back"
  end

  test "updating a Main menu" do
    visit main_menus_url
    click_on "Edit", match: :first

    click_on "Update Main menu"

    assert_text "Main menu was successfully updated"
    click_on "Back"
  end

  test "destroying a Main menu" do
    visit main_menus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Main menu was successfully destroyed"
  end
end
