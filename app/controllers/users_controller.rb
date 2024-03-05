# frozen_string_literal: true

class UsersController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, with: -> { not_found('User not found') }

	before_action :set_user, only: [:show]

	def index
		@users = User.order(created_at: :desc)
		render_response(:users, @users, UserSerializer)
	end

	def show
		render_response(:user, @user, UserSerializer)
	end

	private

	def set_user
		@user = User.find(params[:id])	
	end
end