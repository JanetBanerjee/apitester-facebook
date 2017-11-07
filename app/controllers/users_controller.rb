class UsersController < ApplicationController
  require 'koala'

  def create
    user = User.from omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    redirect to root_url
  end

  def login
    @user = User.koala(request.env['omniauth.auth']['credentials'])
  end

end