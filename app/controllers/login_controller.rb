class LoginController < ApplicationController
  def login
    login_user = User.find_by(name:params[:name])
    if login_user && login_user.authenticate(params[:password])
      render plain: login_user.token
    else
      render plain: 'no auth'
    end
  end
end
