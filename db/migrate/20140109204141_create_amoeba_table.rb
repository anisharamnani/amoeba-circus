class CreateAmoebaTable < ActiveRecord::Migration
  def change 
  	create_table :amoebas do |t|
  		t.string :name 
  		t.integer :generation
  		t.belongs_to :talent_id
  		t.belongs_to :act_id 
  	end 
  end 
end
