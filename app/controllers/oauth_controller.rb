class OauthController < ApplicationController
  def connect
  	redirect_to Instagram.authorize_url(:redirect_uri => 'http://localhost:3000/oauth/callback')
  end

  def callback
  	response = Instagram.get_access_token(params[:code], :redirect_uri => 'http://localhost:3000/oauth/callback')
  	session[:access_token] = response.access_token
  	redirect_to user_feed_path
  end

  def logout
  	reset_session
  	redirect_to user_adios_path
  end
end
