class NumbersController < ApplicationController
	logger = Rails.logger

	def index
		#@number = Number.all
	end

	def show
		@number = Number.find(params[:id])
	end

	def new
		@number = Number.new
	end

	def edit
		@number = Number.find(params[:id])
	end

	def create
		@number = Number.new(number_params)

		if @number.save
			redirect_to @number
		else
			render 'new'
		end
	end

	def update
		# Phone number input validation to be done in Model
		@number = Number.find(params[:id])

		if @number.update(number_params)
			redirect_to @number
		else
			render 'edit'
		end
	end

	def destroy
		#
	end

	private
		def number_params
			params.require(:number).permit(:number)
		end
end
