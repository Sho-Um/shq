class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  
  def show
    @questions = current_user.questions.order("created_at DESC")
  end

end
