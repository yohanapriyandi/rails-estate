class AddAdminToAccounts < ActiveRecord::Migration[6.1]
  def change
    add_column :accounts, :admin, :boolean, default: false
  end
end