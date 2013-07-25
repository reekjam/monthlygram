class UserController < ApplicationController
	def index
	end

	def feed
		client = Instagram.client(:access_token => session[:access_token])
		@ig_user = client.user
		@today = Date.today.strftime("%m")

		all_months = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"]

		@photos = client.user_recent_media(count: 50, min_timestamp: get_start_and_end_date(@today)[:start], 
							max_timestamp: get_start_and_end_date(@today)[:end])

		for month in all_months
			if params[:month] == month
				@photos = client.user_recent_media(count: 50, min_timestamp: get_start_and_end_date(params[:month])[:start], 
									max_timestamp: get_start_and_end_date(params[:month])[:end])
			end
		end
	end

	def adios
	end
end
