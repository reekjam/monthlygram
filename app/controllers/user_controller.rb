class UserController < ApplicationController
	def index
	end

	def feed
		client = Instagram.client(:access_token => session[:access_token])
		@ig_user = client.user
		@today_year = Date.today.strftime("%Y")
		@today_month = Date.today.strftime("%m")

		if params[:month]
			@photos = client.user_recent_media(count: 50, min_timestamp: get_start_and_end_date(params[:year], params[:month])[:start], 
								max_timestamp: get_start_and_end_date(params[:year], params[:month])[:end])
		else
			@photos = client.user_recent_media(count: 50, min_timestamp: get_start_and_end_date(@today_year, @today_month)[:start], 
								max_timestamp: get_start_and_end_date(@today_year, @today_month)[:end])
		end
		@photos = @photos.reverse

	end

	def adios
	end
end
