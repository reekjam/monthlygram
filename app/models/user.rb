require 'instagram'

class User < ActiveRecord::Base
  # attr_accessible :title, :body

  def get_start_and_end_dates(month)
  	start = Time.local(Time.now.year, month.to_i)
  	{start: start.to_i, finish: start.end_of_month.to_i}
  end

  def month_options
  	[
  		[1, "JAN"],
  		[2, "FEB"],
  		[3, "MAR"],
  		[4, "APR"],
  		[5, "MAY"],
  		[6, "JUN"],
  		[7, "JUL"],
  		[8, "AUG"],
  		[9, "SEP"],
  		[10, "OCT"],
  		[11, "NOV"],
  		[12, "DEC"]
  	]
  end

end
