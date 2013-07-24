require 'Date'

class ApplicationController < ActionController::Base
  protect_from_forgery
  def get_start_and_end_date(month)
  	month_number = month_options(month)

  	start_date = Time.local(Time.now.year, month_number)
  	end_date = start_date.end_of_month
  	
  	{start: start_date.to_i, end: end_date.to_i}
  end

  def month_options(month)
  	if month == "JAN"
  		return 1
  	elsif month == "FEB"
  		return 2
  	elsif month == "MAR"
  		return 3
  	elsif month == "APR"
  		return 4
  	elsif month == "MAY"
  		return 5
  	elsif month == "JUN"
  		return 6
  	elsif month == "JUL"
  		return 7
  	elsif month == "AUG"
  		return 8
  	elsif month == "SEP"
  		return 9
  	elsif month == "OCT"
  		return 10
  	elsif month == "NOV"
  		return 11
  	elsif month == "DEC"
  		return 12
  	end
  end

end
