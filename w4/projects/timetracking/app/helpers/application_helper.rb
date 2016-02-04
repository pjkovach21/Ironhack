####where do i place this in my view and other places


module ApplicationHelper
	def flash_message
		flash_content(:notice) || flash_content(:alert)
	end
####fix
def flash_content(type)
		if flash[type]
			content_tag :div, class: "#{type}" do
				content_tag :p do
					flash[type]
				end
			end
		end
	end
end