class AuthsController < ApplicationController
  def login
    id = params[:user_id]
    password = params[:password]
    
    if (id == nil) || (password == nil)
      render plain: 401
    else
      @session_data = Session.where(user_id: id, password: password)
      render "login", :formats => [:json], :handlers => [:jbuilder] 
    end
  end
end
