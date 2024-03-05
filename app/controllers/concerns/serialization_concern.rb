# frozen_string_literal: true

module SerializationConcern

	# Serialize a given structure
	def serialize_obj(serializer, data)
		serializer.new(data).send(:serializable_hash)
	end
end