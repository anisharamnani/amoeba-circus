class Amoeba < ActiveRecord::Base
	attr_accessible :name, :generation, :talent_id, :act_id 
	belongs_to :acts
	belongs_to :talents

	NAMES = ["Keith", "Kate", "Uzo", "Anisha"]

	def split 
		Amoeba.create(name: NAMES.sample, :generation => (generation+1), :talent_id => talent_id, :act_id => act_id)
		Amoeba.create(name: NAMES.sample, :generation => (generation+1), :talent_id => talent_id, :act_id => act_id)
		destroy
	end 
end 