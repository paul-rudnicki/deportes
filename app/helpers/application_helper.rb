module ApplicationHelper

	def since_when time
		time_ago_in_words(time)
	end


	def user_role role
		if role == 'author'
			"<span class='label label-success'>Author</span>".html_safe
		elsif role == 'admin'
			"<span class='label label-danger'>Admin</span>".html_safe
		elsif role == 'guest'
			"<span class='label label-info'>Gość</span>".html_safe
		end
	end

	def user_status banned
		if banned
			"<span class='label label-danger'>Zbanowany</span>".html_safe
		else
			"<span class='label label-success'>Aktywny</span>".html_safe
		end
	end

	def show_fullname fullname
		if fullname.present?
			fullname
		else
			'Brak danych'
		end
	end
end
