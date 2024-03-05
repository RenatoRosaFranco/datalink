# frozen_string_literal: true

class ApplicationController < ActionController::Base
	include HttpConcern
	include SerializationConcern

	protect_from_forgery with: :null_session

	rescue_from ActiveRecord::RecordNotFound, with: :not_found
end
