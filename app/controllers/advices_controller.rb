class AdvicesController < ApplicationController
  def create
    advice = Advice.create(advice_params)
    redirect_to "/questions/#{advice.question.id}"
  end
  
  private
  
  def advice_params
    params.require(:advice).permit(:text).merge(user_id: current_user.id, question_id: params[:question_id])
  end

end
