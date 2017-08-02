class AnswersController < ApplicationController
  def new
  	@answer = Answer.new
  end

  def create
  	#render text: params[:plot]
    plot = Plot.find_by_id(params[:plot])

  	answer = Answer.new(answer_params)

  	plot.answers << answer
  	
  	#format.js {render inline: "location.reload();" }
  	redirect_to :back
  end

  private
  def answer_params
    params.require(:answer).permit(:email, :content, :attach1, :attach2, :attach3, :attach4)
  end
end
