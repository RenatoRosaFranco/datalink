# frozen_string_literal: true

module HttpConcern

	# Handle not found status
	def not_found(message = 'Record not found')
		render json: { error: message }, status: :not_found
	end

	# Render server response
	def render_response(identifier, data, serializer, status = :ok)
		render json: {
			"#{identifier}": serialize_obj(serializer, data)
		}, status: status
	end

	# Render error response
	def render_error_response(errors, status = :unprocessable_entity)
		render json: { errors: errors }, status: status
	end
end