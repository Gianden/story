require "test_helper"

class MainMenusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @main_menu = main_menus(:one)
  end

  test "should get index" do
    get main_menus_url
    assert_response :success
  end

  test "should get new" do
    get new_main_menu_url
    assert_response :success
  end

  test "should create main_menu" do
    assert_difference('MainMenu.count') do
      post main_menus_url, params: { main_menu: {  } }
    end

    assert_redirected_to main_menu_url(MainMenu.last)
  end

  test "should show main_menu" do
    get main_menu_url(@main_menu)
    assert_response :success
  end

  test "should get edit" do
    get edit_main_menu_url(@main_menu)
    assert_response :success
  end

  test "should update main_menu" do
    patch main_menu_url(@main_menu), params: { main_menu: {  } }
    assert_redirected_to main_menu_url(@main_menu)
  end

  test "should destroy main_menu" do
    assert_difference('MainMenu.count', -1) do
      delete main_menu_url(@main_menu)
    end

    assert_redirected_to main_menus_url
  end
end
