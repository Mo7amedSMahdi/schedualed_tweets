class RegisterationsController < ApplicationController
    def new
        @user = User.new
    end
    def create
        # => [["email", "mohammed@m.com"], 
        #["password_digest", "[FILTERED]"], 
        #"created_at", "2022-01-29 15:26:45.022237"], 
        #["updated_at", "2022-01-29 15:26:45.022237"]]
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to root_path, notice: 'User was successfully created'
        else
            render :new
        end
    end

    
    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end