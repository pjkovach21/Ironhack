class UsersController < ApplicationController

	def show
		
	end

	def create
		#dont know if correct
		@users = User.find(id: params[:user])
		@user = users.user.new(params[:name])
		if @user.save
			redirect_to action: 'index', controller: 'products'
		else
			render 'new'
		end
	end

	def destroy
		
	end

	def new
		@user = User.new
	end
end
