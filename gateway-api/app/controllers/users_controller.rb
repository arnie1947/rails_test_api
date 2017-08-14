class UsersController < ApplicationController
  def login
    email=params[:email]
    password=params[:password]
    user=MyApi::User.where(:email=>email, :password=>password).all().first()
    if user
      render :json=>{'error':false,'email':email,'api_key'=>user['api-key']}
    else
      render :json=>{'error':true,'message'=>'Incorrect email or password'}
    end
  end
end
