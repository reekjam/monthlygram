class ApplicationController < ActionController::Base
  protect_from_forgery

  def get_start_and_end_date(month)

  	start_date = Time.local(Time.now.year, month)
  	end_date = start_date.end_of_month
  	
  	{start: start_date.to_i, end: end_date.to_i}
  end

  def has_caption(photo)
    if photo.caption.blank?
      ""
    else
      photo.caption.text.truncate(178)
    end
  end

end
