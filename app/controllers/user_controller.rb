class UserController < ApplicationController
  def login
  end

  def authenticate
		#User.new(params[:userform]) will create a new object of User, retrieve values from the form and store it variable @user.
		@user = User.new(params[:userform])
        #find records with username,password
		valid_user = User.find(:first,:conditions => ["username = ? and password = ?",@user.username, @user.password])

        #if statement checks whether valid_user exists or not
		if valid_user
        #creates a session with username
			session[:username]=valid_user.username
        #redirects the user to our private page.
			redirect_to :controller => 'posts'
		else
			flash[:notice] = "Invalid User/Password"
			redirect_to :action=> 'login'
		end
   end
   
  def login
  end
  
  def logout
  	if session[:username]
  		reset_session
  		redirect_to :action => 'login'
 	end
  end
  
  def private
  	if !session[:username]
  		redirect_to :action => 'login'
  	end
  end

end
