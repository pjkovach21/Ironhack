class ContactsController < ApplicationController
	def index
		@contacts = Contact.limit(20).order("name DESC")
		# render("index")
	end
	def new

		# render("new")
	end
	def create
	  contact = Contact.new(
      :name => params[:contact][:name],
      :address => params[:contact][:address],
      :number => params[:contact][:number],
      :email => params[:contact][:email])
     
    	if  contact.save
      		redirect_to("/contacts")
    	else
			@errors = contact.errors.full_messages
    		render("new")
		end
	end
	def show
		id = params[:contact_id]
		@user=Contact.find_by(id: id)
		# render "show"
	end
	def fav

		fav_id =  params[:fav]
		favorite = Contact.find(fav_id)
		#set this to yes in the db to show that it is a favorite, if no yes not a facor
		favorite.fav = "yes"
		favorite.save
		redirect_to "/fav"
	end

	def list_fav
		@contacts = Contact.where(fav:  "yes")
	end
end
