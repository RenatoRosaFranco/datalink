# frozen_string_literal: true

module ImageHelper
	def self.image_path(object)
    url_helper = Rails.application.routes.url_helpers
    object.image.present? ? url_helper.rails_blob_url(object.image.file, only_path: true) : nil
	end
end