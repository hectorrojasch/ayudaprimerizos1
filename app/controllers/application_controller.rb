class ApplicationController < ActionController::Base

	protected


	def tengo_permisos?
		
		if !current_user.admin?
			redirect_to articles_path, alert: "No tienes permisos para esto"
		end
	end	


end
