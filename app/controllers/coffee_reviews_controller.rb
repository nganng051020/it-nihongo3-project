class CoffeeReviewsController < ApplicationController
  before_action :set_coffee_review, only: %i[ show edit update destroy ]
  before_action : authenticate_user!
  # GET /coffee_reviews or /coffee_reviews.json
  def index
    @coffee_reviews = CoffeeReview.all
  end

  # GET /coffee_reviews/1 or /coffee_reviews/1.json
  def show
  end

  # GET /coffee_reviews/new
  def new
    @coffee_review = CoffeeReview.new
  end

  # GET /coffee_reviews/1/edit
  def edit
  end

  # POST /coffee_reviews or /coffee_reviews.json
  def create
    @coffee_review = CoffeeReview.new(coffee_review_params)
    @coffee_review.user_id = current_user.id
    respond_to do |format|
      if @coffee_review.save
        format.html { redirect_to @coffee_review, notice: "Coffee review was successfully created." }
        format.json { render :show, status: :created, location: @coffee_review }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @coffee_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coffee_reviews/1 or /coffee_reviews/1.json
  def update
    respond_to do |format|
      if @coffee_review.update(coffee_review_params)
        format.html { redirect_to @coffee_review, notice: "Coffee review was successfully updated." }
        format.json { render :show, status: :ok, location: @coffee_review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @coffee_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coffee_reviews/1 or /coffee_reviews/1.json
  def destroy
    @coffee_review.destroy
    respond_to do |format|
      format.html { redirect_to coffee_reviews_url, notice: "Coffee review was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coffee_review
      @coffee_review = CoffeeReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coffee_review_params
      params.require(:coffee_review).permit(:user_id, :coffee_id, :review)
    end
end
