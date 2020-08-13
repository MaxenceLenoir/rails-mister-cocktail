class AddDoseDescriptionNotNull < ActiveRecord::Migration[6.0]
  def change
    change_column :doses, :description, :string, null: false
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
