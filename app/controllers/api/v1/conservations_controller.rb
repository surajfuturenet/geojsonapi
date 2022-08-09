module Api
	module V1
		class ConservationsController < ApplicationController
			  # Only allow a list of trusted parameters 
			ALLOWED_DATA = %[name address polygonid partid pointid longitude latitude description].freeze

			def index
				convervations = Conservation.all
				render json: convervations
			end

			def show
				convervation = Conservation.find(params[:id])
				render json: convervation
			end

			def create
				data = json_payload.select {|k| ALLOWED_DATA.include?(k)}
				convervation = Conservation.new(data)

				if convervation.save
					render json: convervation
				else
					render json: {"error": "Error while saving convervation"}
				end
			end 

			def update
				data = json_payload.select {|k| ALLOWED_DATA.include?(k)}
				
				convervation = Conservation.find(params[:id])
				
				if convervation = Conservation.update(data)
					render json: convervation
				else
					render json: {"error": "Error while updating convervation"}
				end
			end

			def destroy
				convervation = Conservation.find(params[:id])

				if convervation.destroy
					render json: {"error": "Succesfully destroyed conservation"}
				else
					render json: {"error": "Error while destroying conservation"}
				end

			end

		end
	end
end
