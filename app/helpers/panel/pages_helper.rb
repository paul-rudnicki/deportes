module Panel::PagesHelper

	def show_status status
		if status
			"<span class='label label-danger'>Opublikowany</span>".html_safe
		else
			"<span class='label label-success'>Szkic</span>".html_safe
		end
	end
end
