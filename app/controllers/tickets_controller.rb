# frozen_string_literal: true

class TicketsController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, with: -> { not_found('Ticket not found') }

	before_action :set_ticket, only: [:show, :edit, :update, :destroy]

	def index
	end

	def new
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

	def set_ticket
	end
end