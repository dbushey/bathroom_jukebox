class SessionsController < ApplicationController

    def home
        if session[:user_id] == nil
          redirect_to login_path
        end
      end

    def new
        
    end
    
    def create
        # session[:username] = params[:user][:name]

        # if session[:username] == nil  
        #     redirect_to login_path
        # else
        #     #Ask to Sign Up
        #     render 'new'
        # end
    end
    
    def destroy 

        # session.delete :user
        # redirect_to login_path
        
    end
    
    #authentication needed
    
end
