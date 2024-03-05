# frozen_string_literal: true

class PlaceTypesController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, with: -> { not_found('PlaceType not found') }

	before_action :set_place_type, only: [:show]

	def index
		@place_types = PlaceType.order(created_at: :desc)
		render_response(:place_types, @place_types, PlaceTypeSerializer)
	end

	def show
		render_response(:place_type, @place_type, PlaceTypeSerializer)
	end

	private

	def set_place_type
		@place_type = PlaceType.find(params[:id])
	end
end
