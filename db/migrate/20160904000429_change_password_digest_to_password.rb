class ChangePasswordDigestToPassword < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :password_digest, :string
    add_column :users, :password, :string
  end
end
