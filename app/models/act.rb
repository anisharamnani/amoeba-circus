class Act < ActiveRecord::Base
	has_many :amoebas
	has_many :talents, through :amoebas 
end 