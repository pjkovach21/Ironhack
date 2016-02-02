class ContactsController < ApplicationController
	def index
		@contacts = Contact.limit(20).order("name DESC")
		
	end
	def new

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
    		redirect_to ("/404")
		end
	end
	def show
		id = params[:contact_id]
		@user=Contact.find_by(id: id)
		# render "/contact_id"
	end
end
