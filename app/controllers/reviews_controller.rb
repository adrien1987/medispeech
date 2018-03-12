class ReviewsController < ApplicationController
	before_action :set_review, only: [:edit, :update]


	def new
		@review = Review.new
    @drug = DrugService.drug(params[:code_cis])
	end

	def create
		@review = current_user.reviews.new(review_params)
		@review.code_cis = params[:code_cis]
		@review.user = current_user
		if @review.save
      redirect_to drug_show_path(params[:code_cis])
    else
      render :new
    end
	end

	def edit
	end

	def update
		if @review.update(review_params)
      redirect_to profile_path
    else
      render :edit
    end
	end

	private

	def set_review
		@review = Review.find(params[:id])
	end

	def review_params
		params.require(:review).permit(:user_id, :efficacy, :security, :description, :denomination)
	end

end
