class CategoriesController < ApplicationController
	
	http_basic_authenticate_with :name => "jam", :password => "jam12345"

	def index
		redirect_to new_category_path
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)
		if @category.save
			redirect_to new_category_path
		else
			render 'new'
		end
	end

	private

	def category_params
		params.require(:category).permit(:name)
	end

end
