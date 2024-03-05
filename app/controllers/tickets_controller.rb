# frozen_string_literal: true

class TicketsController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, with: -> { not_found('Ticket not found') }

	before_action :set_ticket, only: [:show, :update, :destroy]

	def index
		@tickets = Ticket.order(created_at: :desc)
		render_response(:tickets, @tickets, TicketSerializer)
	end

	def show
		render_response(:ticket, @ticket, TicketSerializer)
	end

	def create
		ticket = Ticket.new(ticket_params)

		if ticket.save
			render_response(:ticket, ticket, TicketSerializer, :created)
		else
		  render_error_response(ticket.errors.full_messages)
		end
	end


	def update
		if @ticket.update(ticket_params)
			render_response(:ticket, @ticket, TicketSerializer)
		else
		  render_error_response(@ticket.errors.full_messages)
		end
	end

	def destroy
		@ticket.destroy
		head :no_content
	end

	private

	def set_ticket
		@ticket = Ticket.find(params[:id])
	end

	def ticket_params
		params.require(:ticket)
					.permit(:kind, :description, :location)
	end
end