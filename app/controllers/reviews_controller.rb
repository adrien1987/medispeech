class ReviewsController < ApplicationController

	def new
		@review = Review.new
	end

	def create		 
		@review = current_user.reviews.new(review_params)
		@review.code_cis = params[:code_cis]
		@review.user = current_user
		if @review.save
      redirect_to root_path
    else
      render :new
    end
	end

	def edit
	end

	def update
		if @review = Review.update(review_params)
      redirect_to root_path
    else
      render :edit
    end
	end


	private

	def review_params
		params.require(:review).permit(:user_id, :efficacy, :security, :description)
	end

end
