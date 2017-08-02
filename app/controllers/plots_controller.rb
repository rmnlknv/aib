class PlotsController < ApplicationController
  
  def index
  	@plots = Plot.all
  end

  def new
  	@category = Category.find_by_name(params[:category])
  	@plot = Plot.new
  end

  def create
  	category = Category.find_by_name(params[:category])
    plot = Plot.new(plot_params)
    category.plots << plot
    redirect_to "/#{category.name}/#{plot.id}"
  end

  def show
  	@plot = Plot.find_by_id(params[:plot])
    @answers = @plot.answers
  end

  	private
	def plot_params
		params.require(:plot).permit(:name)
	end

end
