# frozen_string_literal: true

class PlacesController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, with: -> { not_found('Place not found') }

	before_action :set_place, only: [:show]

	def index
		@places = Place.order(created_at: :desc)
    
    render json: { 
    	places: serialize_obj(PlaceSerializer, @places) 
    }, status: :ok
	end

	def show
    render json: {
    	place: serialize_obj(PlaceSerializer, @place)
    }, status: :ok
	end

	private

	def set_place
		@place = Place.find(params[:id])
	end
end
