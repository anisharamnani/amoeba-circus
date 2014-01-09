class SetDefaultGenerations < ActiveRecord::Migration
  def up
  	change_column :amoebas, :generation, :integer, :default => 1
  end

  def down
  	change_column :amoebas, :generation, :integer, :default => nil
  end
end
