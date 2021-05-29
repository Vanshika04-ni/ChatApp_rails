class SessionsController < ApplicationController
  def new
  end


  def create
    user=User.find_by(username: params[:session][:username])#user=bbbb
    if user && user.authenticate(params[:session][:password])
      session[:user_id]=user.id#session={user_id:1}
      redirect_to root_path
    else
      redirect_to login_path  
    end  
    


    #byebug
  end  
end
