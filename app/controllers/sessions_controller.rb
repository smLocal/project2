class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by({
        email: params[:email]
      })

      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to '/'

      else
        # flash[:error] = 'Incorrect username/password' #
        render :new   #render is still in this action, if you redirect you lose these instance variables
      end
  end

  def destroy
    session.delete(:user_id)
    redirect_to '/'
  end
end
