class MainController < ApplicationController

    def index
        if session[:user_id]
            @user = User.find(session[:user_id])
            flash.now[:notice] = "Welcome to website!! " + @user.email
        else
            flash.now[:notice] = "Welcome to website!!"
        end

    end

end