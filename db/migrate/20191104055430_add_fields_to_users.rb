class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :companyId, :string
    add_column :users, :productId, :string
    add_column :users, :projectId, :string
    add_column :users, :description, :string
    add_column :users, :group, :string
    add_column :users, :licenseId, :string
    add_column :users, :expiryDate, :string
    add_column :users, :language, :string
    add_column :users, :address, :string
    add_column :users, :phone, :string
    add_column :users, :email, :string
  end
end
