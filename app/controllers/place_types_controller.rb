# frozen_string_literal: true

class PlaceTypesController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, with: -> { not_found('PlaceType not found') }

	before_action :set_place_type, only: [:show]

	def index
		@place_types = PlaceType.order(created_at: :desc)

		render json: {
			places: serialize_obj(PlaceTypeSerializer, @place_types)
		}, status: :ok
	end

	def show
		render json: {
			place: serialize_obj(PlaceTypeSerializer, @place_type)
		}, status: :ok
	end

	private

	def set_place_type
		@place_type = PlaceType.find(params[:id])
	end
end
