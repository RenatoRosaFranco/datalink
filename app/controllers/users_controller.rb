# frozen_string_literal: true

class UsersController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, with: -> { not_found('User not found') }

	before_action :set_user, only: [:show]

	def index
		@users = User.order(created_at: :desc)

		render json: {
			users: serialize_obj(UserSerializer, @users)
		}, status: :ok
	end

	def show
		render json: {
			user: serialize_obj(UserSerializer, @user)
		}, status: :ok
	end

	private

	def set_user
		@user = User.find(params[:id])	
	end
end