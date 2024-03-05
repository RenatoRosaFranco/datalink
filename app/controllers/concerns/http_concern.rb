# frozen_string_literal: true

module HttpConcern
	def not_found(message = 'Record not found')
		render json: { error: message }, status: :not_found
	end
end