class CategoriesController < ApplicationController
	
	def index
		@categories = Category.all
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)
		if @category.save
			redirect_to action: 'index'
		else
			render :new
		end
	end

	def show
		@category = Category.find_by_name(params[:category])
	end


	private
	def category_params
		params.require(:category).permit(:name)
	end

end
