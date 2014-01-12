class ActsController < ApplicationController
	def index 
		@acts = Act.all
	end 

	def show
		@act = Act.find(params[:id])
	end 

	def new
		@act = Act.new 
	end 

	def edit 
		@act = Act.find(params[:id])
	end 

	def update 
		@act = Act.find(params[:id])
		@act.update_attributes(params[:act])
		redirect_to @act
	end 

	def create 
		@act = Act.new(params[:act])
		@act.save
		redirect_to @act
	end 

	def destroy 
		@act = Act.find(params[:id])
		@act.destroy
	end 
end
