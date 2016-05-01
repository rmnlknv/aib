class PlotsController < ApplicationController
  def index
  	@plots = Plot.all
  end

  def new
  	@plot = Plot.new
  end

  def create
  	@plot = Plot.new(plot_params)
  	if @plot.save
  		redirect_to root_path
  	end
  end

  private
  def plot_params
  	params.require(:plot).permit(:title, :description, :image1, :image2, :image3, :image4)
  end
end
