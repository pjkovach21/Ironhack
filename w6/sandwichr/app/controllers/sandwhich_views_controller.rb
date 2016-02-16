class SandwhichViewsController < ApplicationController
	def index
		@sandwhiches = Sandwhich.all
		render "index"
	end
	def show
		@sandwhich = Sandwhich.find_by(id: params[:id])
		@ingredients = Ingredient.all
	end
end

