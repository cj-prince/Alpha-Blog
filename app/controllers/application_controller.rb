class ApplicationController < ActionController::Base

    helper_method :current_user, :logged_in, :sign_in
    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id] 
    end

    def logged_in
        !!current_user
    end

    def require_user
        if !logged_in
            flash[:danger] = 'log in required'
            redirect_to root_path
        end
    end

    def sign_in(user, password)
        if authed = user.authenticate(password)
            session[:user_id] = authed.id     
        end    
        authed
    end    

end
