class UsersController < ApplicationController
  
  def show
    @questions = current_user.questions.order("created_at DESC")
  end

end
