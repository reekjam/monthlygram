class ApplicationController < ActionController::Base
  protect_from_forgery
  def get_start_date(month)
  	start_date = Time.local(Time.now.year, month).to_i
  	return start_date
  end
end
