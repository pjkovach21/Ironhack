class ConcertsController < ApplicationController
	def new
		@concert = Concert.new
	end
	def create
		@concert = Concert.new(concert_params)
		if @concert.save
			redirect_to concerts_path
		else
			render "new"
		end
	end
	def index
		@concerts = Concert.concerts_today
		@concertsmonth = Concert.concerts_month
	end
	def show
		@concert = Concert.find_by(id: params[:id])
		@comment = @concert.comments.new
		@comments = @concert.comments.all
	end

	private
	def concert_params
		params.require(:concert).permit(:artist,:venue,:city,:date,:price,:description)
	end
end
