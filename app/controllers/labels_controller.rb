class LabelsController < ApplicationController

	require 'easypost'
  	EasyPost.api_key = 's6B9ofLPl81aYbYd92gaQA'

	def index
	end

	def new
		@label = Label.new
	end

	def create
		label = Label.new(to_label_params)

		to_address = EasyPost::Address.create(to_label_params
		)

		from_address = EasyPost::Address.create(from_label_params
		)

		parcel = EasyPost::Parcel.create(parcel_params
		)

		shipment = EasyPost::Shipment.create(
		  :to_address => to_address,
		  :from_address => from_address,
		  :parcel => parcel,
		)

		if shipment.save
			redirect_to label_path()
			flash[:notice] = "Label created"
			shipment.get_rates
		else 
			redirect_to :back
			flash[:error] = "Sorry something went wrong!"
		end
		
		# shipment.buy(:rate => {:id => '{RATE_ID}'})

		# puts shipment.postage_label.label_url


	end

	def show
	  @label = Label.find(params[:id])
	end

	private

	def to_label_params
	  params.require(:label).permit(:name, :street1, :street2, :city, :state, :zip, :country, :phone)
	end 

	def from_label_params
		params.require(:label).permit(:from_company, :from_street1, :from_street2, :from_city, :from_state, :from_zip, :from_phone)
	end

	def parcel_params
		params.require(:label).permit(:width, :length, :height,
			:weight)
	end

end
