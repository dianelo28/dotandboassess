class LabelsController < ApplicationController

	require 'easypost'
  	EasyPost.api_key = 's6B9ofLPl81aYbYd92gaQA'

	def index
	end

	def new
		@label = Label.new
	end

	def create
		# label = Label.new(to_label_params)
		@label = EasyPost::Shipment.create(
			:to_address => {
			  :name => 'Diane Lo',
			  :street1 => '1240 California St.',
			  :city => 'San Francisco',
			  :state => 'CA',
			  :zip => '94109',
			  :country => 'US',
			  :phone => '6504551746',
			  :email => 'dianelo0228@gmail.com' 
			},
		    :from_address => {
		      :name => 'EasyPost',
		      :street1 => '118 2nd St',
		      :city => 'San Francisco',
		      :state => 'CA',
		      :zip => '94105',
		      :country => 'US',
		      :phone => '4155559999',
		      :email => 'support@easypost.com' 
		    },
		    :parcel => {
		      :length => 20.2, 
		      :width => 10.9,
		      :height => 5,
		      :weight => 65.9
		    },
		  )      

		@label.buy(
		  :rate => @label.lowest_rate
		)

		puts @label.postage_label.label_url

		# shipment.buy(
		#   :rate => shipment.lowest_rate
		# )

		# puts shipment.postage_label.label_url

		# if shipment.save
		# 	redirect_to labels_path
		# 	flash[:notice] = "Label created"
		# else 
		# 	redirect_to :back
		# 	flash[:error] = "Sorry something went wrong!"
		# end
		


		# shipment.buy(:rate => {:id => '{RATE_ID}'})

		# puts shipment.postage_label.label_url


	end

	def show
	  @label = Label.find(params[:id])
	end

	# private

	# def to_label_params
	#   params.require(:label).permit(:name, :street1, :street2, :city, :state, :zip, :country, :phone)
	# end 

	# def from_label_params
	# 	params.require(:label).permit(:from_company, :from_street1, :from_street2, :from_city, :from_state, :from_zip, :from_phone)
	# end

	# def parcel_params
	# 	params.require(:label).permit(:width, :length, :height,
	# 		:weight)
	# end

end
