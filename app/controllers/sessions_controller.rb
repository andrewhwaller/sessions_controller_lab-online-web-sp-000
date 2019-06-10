class SessionsController < ApplicationController

  def new
  end

  def create
    if !params[:name]
      redirect_to 'Sessions#new'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
  end
end
