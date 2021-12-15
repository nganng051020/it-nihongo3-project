require 'test_helper'

class CoffeeReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coffee_review = coffee_reviews(:one)
  end

  test "should get index" do
    get coffee_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_coffee_review_url
    assert_response :success
  end

  test "should create coffee_review" do
    assert_difference('CoffeeReview.count') do
      post coffee_reviews_url, params: { coffee_review: { coffee_id: @coffee_review.coffee_id, review: @coffee_review.review, user_id: @coffee_review.user_id } }
    end

    assert_redirected_to coffee_review_url(CoffeeReview.last)
  end

  test "should show coffee_review" do
    get coffee_review_url(@coffee_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_coffee_review_url(@coffee_review)
    assert_response :success
  end

  test "should update coffee_review" do
    patch coffee_review_url(@coffee_review), params: { coffee_review: { coffee_id: @coffee_review.coffee_id, review: @coffee_review.review, user_id: @coffee_review.user_id } }
    assert_redirected_to coffee_review_url(@coffee_review)
  end

  test "should destroy coffee_review" do
    assert_difference('CoffeeReview.count', -1) do
      delete coffee_review_url(@coffee_review)
    end

    assert_redirected_to coffee_reviews_url
  end
end
