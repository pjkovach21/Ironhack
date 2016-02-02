class EntriesController < ApplicationController
  def index
 
  	#Entry.where(project_id: params[:id])
  		
  		#@project = Project.find_by(id: params[:id])
 		#@entries =@project.entries

 	@project = Project.find_by(id: params[:project_id])
 	unless @project
 		render "projects/no_projects"
  	end
	end
end