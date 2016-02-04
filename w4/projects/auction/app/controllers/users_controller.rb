class UsersController < ApplicationController

	def show
		@user = User.find_by(id: params[:id])
	end

	def create
		#dont know if correct
		@user = User.new(user_params)
		# (params[:name, :email])
		if @user.save
			redirect_to user_path(@user)
		else
			redirect_to 'new'
		end
	end

	def destroy
		
	end

	def new
		@user = User.new
	end
	private
	def user_params
		params.require(:user).permit(:name,:email)
	end
end
