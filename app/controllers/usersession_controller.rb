class UsersessionController < ApplicationController
  # GET /usersession/login
  def login
    if @user
      redirect_to root_path
      return
    end
  end

  # POST /usersession/login
  # POST /usersession/login.json
  def create
    puts "#{params}"
    user = User.where(:email => params[:user][:email]).first
    if (user)
      if (user.authenticate(params[:user][:password]))
        session[:id] = user.id
        redirect_to root_path
        return
      end
    end

    flash[:error] = "Invalid credentials!!!"
    redirect_to root_path
  end

  # GET /usersession/logout
  def logout
    reset_session
    redirect_to root_path
  end
end
