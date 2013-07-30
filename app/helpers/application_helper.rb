module ApplicationHelper
	def month_options
		[["JAN", "01"], ["FEB", "02"], ["MAR", "03"], ["APR", "04"], ["MAY", "05"], ["JUN", "06"], ["JUL", "07"], ["AUG", "08"], ["SEP", "09"], ["OCT", "10"], ["NOV", "11"], ["DEC", "12"]]
	end

	def has_caption(photo)
    if photo.caption.blank?
      ""
    else
      photo.caption.text.truncate(178)
    end
  end
end