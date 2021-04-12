class SessionsController < ApplicationController

    def new

    end

    def create
        user = User.find_by(email: params[:session][:email])
        if user && sign_in(user, params[:session][:password])
            flash[:success] = "You have successfully signed in"
            redirect_to user_path(user)

        else
            flash.now[:danger] = "There was something wrong with your login information"
            render 'new'
        end
    end

    def destroy
        
    end
end