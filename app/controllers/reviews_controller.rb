class ReviewsController < ApplicationController

	def new
		@review = Review.new
	end

	def create
		@review = Review.new(review_params)
		@review.user = current_user
		if @review.save
      # redirect_to profile_path(@review.user)
    else
      render :new
    end
	end

	def edit
	end

	def update
		if @review = Review.update(review_params)
      # redirect_to profile_path(@review.user)
    else
      render :edit
    end
	end

end
