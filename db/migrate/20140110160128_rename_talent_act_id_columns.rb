class RenameTalentActIdColumns < ActiveRecord::Migration
  def up
  	rename_column(:amoebas, :talent_id_id, :talent_id)
  	rename_column(:amoebas, :act_id_id, :act_id)
  end

  def down
  	rename_column(:amoebas, :talent_id, :talent_id_id)
  	rename_column(:amoebas, :act_id, :act_id_id)
  end
end
