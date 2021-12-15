require "application_system_test_case"

class CoffeeReviewsTest < ApplicationSystemTestCase
  setup do
    @coffee_review = coffee_reviews(:one)
  end

  test "visiting the index" do
    visit coffee_reviews_url
    assert_selector "h1", text: "Coffee Reviews"
  end

  test "creating a Coffee review" do
    visit coffee_reviews_url
    click_on "New Coffee Review"

    fill_in "Coffee", with: @coffee_review.coffee_id
    fill_in "Review", with: @coffee_review.review
    fill_in "User", with: @coffee_review.user_id
    click_on "Create Coffee review"

    assert_text "Coffee review was successfully created"
    click_on "Back"
  end

  test "updating a Coffee review" do
    visit coffee_reviews_url
    click_on "Edit", match: :first

    fill_in "Coffee", with: @coffee_review.coffee_id
    fill_in "Review", with: @coffee_review.review
    fill_in "User", with: @coffee_review.user_id
    click_on "Update Coffee review"

    assert_text "Coffee review was successfully updated"
    click_on "Back"
  end

  test "destroying a Coffee review" do
    visit coffee_reviews_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coffee review was successfully destroyed"
  end
end
