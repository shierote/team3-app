class AddUserIdToFee < ActiveRecord::Migration[5.2]
  def change
    add_column :fees, :user_id, :integer
  end
end
