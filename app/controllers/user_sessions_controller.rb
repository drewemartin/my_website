class UserSessionsController < ApplicationController
  skip_before_filter :require_login
  
  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      redirect_to user_path(@user), notice: 'Login Successful'
    else
      flash.now[:alert] = 'Login Failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to root_path, notice: 'Logged Out!'
  end
end