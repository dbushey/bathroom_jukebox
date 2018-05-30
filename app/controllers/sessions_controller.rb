class SessionsController < ApplicationController

    def home 

    end

    def new
        
    end
    
    def create
        session[:username] = params[:user][:name]

        if session[:username] == nil  
            redirect_to login_path
        else
            #Ask to Sign Up
            render 'new'
        end
    end
    
    def destroy 

        session.delete :user
        
    end
    
    
end
