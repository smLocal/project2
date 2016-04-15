class UsersController < ApplicationController
  def index
    @users = User.all

  end

  def new
  end

  def create
    @user = User.new({
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
      })

      if @user.save
        session[:user_id] = @user.id
        redirect_to '/'
      else
        render :new
      end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    # @user = User.find(params[:id])
    # @user.name = user_params[:is_admin]
    # if user_params[:is_admin] != ""
    #   @user.is_admin = user_params[:is_admin]
    # end
    # @user.save
    # redirect_to '/users'

    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      redirect_to '/'
    else
      render :edit
    end
  end

  def makeadmin
    @user=User.find(params[:id])
    @user.is_admin = true
    @user.save
    redirect_to '/'

  end

private

    def user_params

      params.require(:user).permit(:email, :password, :password_confirmation, :is_admin)
    end


end
