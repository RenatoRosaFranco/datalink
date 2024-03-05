# frozen_string_literal: true

class CityHallSectorsController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, with: -> { not_found('Sector not found') }

	before_action :set_city_hell_sector, only: [:show, :update, :destroy]

	def index
		# TODO: to be implemented
	end

	def show
		# TODO: to be implemented
	end

	def create
		# TODO: to be implemented
	end

	def update
		# TODO: to be implemented
	end

	def destroy
		# TODO: to be implemented
	end

	private

	def set_city_hall_sector
		@city_hall_sector = CityHallSector.find(params[:id])
	end

	def city_hall_sector_params
		params.require(:city_hall_sector)
					.permit(:name)
	end
end