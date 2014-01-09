class CreateTalentsTable < ActiveRecord::Migration
  def change 
  	create_table :talents do |t|
  		t.string :name 
  		t.timestamps
  	end 
  end 
end
