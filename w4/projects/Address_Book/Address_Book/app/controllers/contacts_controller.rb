class ContactsController < ApplicationController
	def index
		@contacts = Contact.limit(20).order("name asc")
		render "index"
	end
	def new

	end
	def create
	  contact = Contact.new(
      :name => params[:contact][:name],
      :address => params[:contact][:address],
      :number => params[:contact][:number],
      :email => params[:contact][:email])
      contact.save

    redirect_to("/contacts")
	end
end
