class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  skip_before_filter :require_login, only: [:new, :create]


  def show
    @user = User.find(params[:id])
  end

 
  def new
    @user = User.new
  end



  def create
    @user = User.new(user_params)

      if @user.save
        auto_login(@user)
        redirect_to user_path(@user), notice: 'Profile successfully created.' 
        
      else
        render :new 
      end  
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
