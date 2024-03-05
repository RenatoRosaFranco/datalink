# frozen_string_literal: true

class ApplicationController < ActionController::API
	include HttpConcern
	include SerializationConcern

	rescue_from ActiveRecord::RecordNotFound, with: :not_found
end
