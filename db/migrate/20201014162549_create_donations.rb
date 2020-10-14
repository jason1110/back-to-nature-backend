class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      t.references :user
      t.references :tree
      t.timestamps
    end
  end
end
