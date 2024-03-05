# frozen_string_literal: true

module SerializationConcern
	def serialize_obj(serializer, data)
		serializer.new(data).send(:serializable_hash)
	end
end