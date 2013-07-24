class UserController < ApplicationController
	def index
	end

	def feed
		client = Instagram.client(:access_token => session[:access_token])
		@ig_user = client.user
	
		all_months = ["JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"]

		for month in all_months
			if params[:month] == month
				@photos = client.user_recent_media(min_timestamp: get_start_and_end_date(params[:month])[:start], 
									max_timestamp: get_start_and_end_date(params[:month])[:end])
			end
		end
	end

	def adios
	end
end
