# frozen_string_literal: true

class PlacesController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, with: -> { not_found('Place not found') }

	before_action :set_place, only: [:show]

	def index
		@places = Place.order(created_at: :desc)
    render_response(:places, @places, PlaceSerializer)
	end

	def show
   	render_response(:place, @place, PlaceSerializer)
	end

	private

	def set_place
		@place = Place.find(params[:id])
	end
end
