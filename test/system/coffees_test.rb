require "application_system_test_case"

class CoffeesTest < ApplicationSystemTestCase
  setup do
    @coffee = coffees(:one)
  end

  test "visiting the index" do
    visit coffees_url
    assert_selector "h1", text: "Coffees"
  end

  test "creating a Coffee" do
    visit coffees_url
    click_on "New Coffee"

    fill_in "Description", with: @coffee.description
    fill_in "Price", with: @coffee.price
    fill_in "Restaurant", with: @coffee.restaurant
    fill_in "Title", with: @coffee.title
    click_on "Create Coffee"

    assert_text "Coffee was successfully created"
    click_on "Back"
  end

  test "updating a Coffee" do
    visit coffees_url
    click_on "Edit", match: :first

    fill_in "Description", with: @coffee.description
    fill_in "Price", with: @coffee.price
    fill_in "Restaurant", with: @coffee.restaurant
    fill_in "Title", with: @coffee.title
    click_on "Update Coffee"

    assert_text "Coffee was successfully updated"
    click_on "Back"
  end

  test "destroying a Coffee" do
    visit coffees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coffee was successfully destroyed"
  end
end
