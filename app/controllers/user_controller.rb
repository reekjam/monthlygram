class UserController < ApplicationController
  	def index
  	end

  	def feed
  		client = Instagram.client(:access_token => session[:access_token])
		@user = client.user
		
		if params[:month] == "jan"
			@photos = client.user_recent_media(max_timestamp:"1359676801")
		elsif params[:month] == "feb"
			@photos = client.user_recent_media(min_timestamp:"1359676801", max_timestamp:"1362095999")
		elsif params[:month] == "mar"
			@photos = client.user_recent_media(min_timestamp:"1362095999", max_timestamp:"1364774399")
		elsif params[:month] == "apr"
			@photos = client.user_recent_media(min_timestamp:"1364774399", max_timestamp:"1367366399")
		elsif params[:month] == "may"
			@photos = client.user_recent_media(min_timestamp:"1367366399", max_timestamp:"1370044799")
		elsif params[:month] == "jun"
			@photos = client.user_recent_media(min_timestamp:"1370044799", max_timestamp:"1372636799")
		elsif params[:month] == "jul"
			@photos = client.user_recent_media(min_timestamp:"1372636799", max_timestamp:"1375315199")
		elsif params[:month] == "aug"
			@photos = client.user_recent_media(min_timestamp:"1375315199", max_timestamp:"1377993599")
		elsif params[:month] == "sep"
			@photos = client.user_recent_media(min_timestamp:"1377993599", max_timestamp:"1380585599")
		elsif params[:month] == "oct"
			@photos = client.user_recent_media(min_timestamp:"1380585599", max_timestamp:"1383263999")
		elsif params[:month] == "nov"
			@photos = client.user_recent_media(min_timestamp:"1383263999", max_timestamp:"1385855999")
		elsif params[:month] == "dec"
			@photos = client.user_recent_media(min_timestamp:"1385855999", max_timestamp:"1388534399")
		else
			@photos = client.user_recent_media
		end

	end

	def adios
	end
end
