class WelcomeController < ApplicationController
	skip_before_action :authenticate_user!, only: [:index]

	def index
	end

	def dash
	end

end