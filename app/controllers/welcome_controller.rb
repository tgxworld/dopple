class WelcomeController < ApplicationController

  def index
    if user_signed_in?
      @client = current_user.fitbit_data
    end
  end

  def about
  end

  def blog
  end

  def add_friend
  end

end
