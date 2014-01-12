class AmoebasController < ApplicationController
	def index 
		@amoebas = Amoeba.all
	end 

	def show
		@amoeba = Amoeba.find(params[:id])
	end 

	def new
		@amoeba = Amoeba.new 
	end 

	def edit 
		@amoeba = Amoeba.find(params[:id])
	end 

	def update 
		@amoeba = Amoeba.find(params[:id])
		@amoeba.update_attributes(params[:amoeba])
		redirect_to @amoeba
	end 

	def create 
		@amoeba = Amoeba.new(params[:amoeba])
		@amoeba.save
		redirect_to @amoeba
	end 

	def destroy 
		@amoeba = Amoeba.find(params[:id])
		@amoeba.destroy
	end 

end
