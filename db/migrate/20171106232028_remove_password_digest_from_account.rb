class RemovePasswordDigestFromAccount < ActiveRecord::Migration[5.1]
  def change
    remove_column :accounts, :password_digest, :string
  end
end
