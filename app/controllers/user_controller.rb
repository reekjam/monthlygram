class UserController < ApplicationController
	def index
	end

	def feed
		client = Instagram.client(:access_token => session[:access_token])
		@ig_user = client.user
		@today = [Date.today.strftime("%Y"), Date.today.strftime("%m")]
		

		if params[:month]
			@photos = client.user_recent_media(count: 50, min_timestamp: get_start_and_end_date(params[:year], params[:month])[:start], 
								max_timestamp: get_start_and_end_date(params[:year], params[:month])[:end])
		else
			@photos = client.user_recent_media(count: 50, min_timestamp: get_start_and_end_date(@today[0], @today[1])[:start], 
								max_timestamp: get_start_and_end_date(@today[0], @today[1])[:end])
		end
		@photos = @photos.reverse

	end

	def adios
	end
end
