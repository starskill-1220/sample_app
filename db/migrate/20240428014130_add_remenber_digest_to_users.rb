class AddRemenberDigestToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :remenber_digest, :string
  end
end
