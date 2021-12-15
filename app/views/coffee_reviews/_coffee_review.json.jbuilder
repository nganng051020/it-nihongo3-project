json.extract! coffee_review, :id, :user_id, :coffee_id, :review, :created_at, :updated_at
json.url coffee_review_url(coffee_review, format: :json)
