require 'instagram'

Instagram.configure do |config|
	config.client_id = 'c51582f141c24974bc8234db150e1624'
	config.client_secret = 'ccf1ec63f6584f53b9652f7a0f662550'
end

class OauthController < ApplicationController
  def connect
  	redirect_to Instagram.authorize_url(:redirect_uri => 'http://localhost:3000/oauth/callback')
  end

  def callback
  	response = Instagram.get_access_token(params[:code], :redirect_uri => 'http://localhost:3000/oauth/callback')
  	session[:access_token] = response.access_token
  	redirect_to home_feed_path
  end

  def logout
  	reset_session
  	redirect_to home_adios_path
  end
end
