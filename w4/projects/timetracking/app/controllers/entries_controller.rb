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
	def new
		@project = Project.find(params[:project_id])
		@entry = @project.entries.new
	end
	def create
		@project = Project.find params[:project_id]
		#put in entry params as security instead of params[:entry]
		@entry = @project.entries.new (entry_param)

		if @entry.save
			flash[:notice] = "entry created"
			redirect_to action: 'index', controller: 'entries' , project_id: @project.id
		else
			flash[:alert] = "entry failure"
			render 'new'
		end
	end
	def edit
		@project = Project.find(params[:project_id])
		@entry = @project.entries.find(params[:id])

	end
	def destroy
		entry =Entry.find(params[:id])
		entry.destroy
		redirect_to project_entries_path(params[:project_id])
	end	

	def update
		@project = Project.find(params[:project_id])
		@entry = @project.entries.find(params[:id])
			if @entry.update_attributes(entry_param)
				flash[:notice] = "entry edited"
				redirect_to project_entries_path(@project)
			else
				render 'edit'
			end
	end

	private
	def entry_param
		params.require(:entry).permit(:hours, :minutes, :date)	
	end
end