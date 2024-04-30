class RenameRemenberDigestColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :remenber_digest, :remember_digest
  end
end
