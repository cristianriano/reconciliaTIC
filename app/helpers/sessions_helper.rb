module SessionsHelper

    #Loguea al usuario
	def log_in(user)
		session[:user_id] = user.id
	end

	#Almacena al usuario en la variable global "current_user"
	def current_user
		if(user_id = session[:user_id])
			@current_user ||= User.find_by(id: user_id)
		end
	end

	#Elimina la session de las cookies
	def log_out
		session.delete(:user_id)
		@current_user = nil
	end

	#Verifica si el usuario se encuentra logueado
	def logged_in?
		!current_user.nil?
	end


end
