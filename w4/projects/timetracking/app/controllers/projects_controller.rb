class ProjectsController < ApplicationController
	def index
		@projects = Project.last_created_projects(10)
		render "index"
	end
	def show
		id = params[:id]
		@project = Project.find_by(id)
	end
end
