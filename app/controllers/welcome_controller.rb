class WelcomeController < ApplicationController
  def index
    # if !user_signed_in?
    #   redirect_to new_user_session_path
    # end
    # return
  end

  def about
    respond_to do |format|
    format.js
    end
  end

end
