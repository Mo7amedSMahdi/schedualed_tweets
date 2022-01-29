class MainController < ApplicationController

    def index
        flash.now[:notice] = "Welcome to website!!"
    end

end