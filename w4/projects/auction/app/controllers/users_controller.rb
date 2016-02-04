class UsersController < ApplicationController

	def show
		
	end

	def create
		#dont know if correct
		@user = User.find(params:[:name)

	end

	def destroy
		
	end

	def new
		@user = User.new
	end
end
