class SessionsController < ApplicationController

    def home
        if get_id == nil
            redirect_to login_path
        else
            @user = User.find(get_id)
        end
    end

    def new
        
    end
    
    def create
        @user = User.find_by(username: params[:username])

        if @user == nil
            ## render page with error
            ## tell them password/username combination is incorrect
            redirect_to new_user_path
        elsif @user.authenticate(params[:password]) 
            session[:id] = @user.id
            redirect_to root_path
        end

    end
    
    def destroy 

        session.delete :id
        redirect_to login_path
        
    end
    
    #authentication needed
    private

    def get_id
        session[:id]
    end
end
