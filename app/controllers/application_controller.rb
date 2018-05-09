class ApplicationController < ActionController::API
	include Response
    include ExceptionHandler
    protect_from_forgery with: :null_session
    include Authenticable
end
