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
            redirect_to new_user_path
        elsif @user.authenticate(params[:password]) 
            session[:id] = @user.id
            redirect_to root_path
        else
            redirect_to new_user_path
        #     #Ask to Sign Up
        #     render 'new'
        end

    end
    
    def destroy 

        session.destroy
        redirect_to login_path
        
    end
    
    #authentication needed
    private

    def get_id
        session[:id]
    end
end
