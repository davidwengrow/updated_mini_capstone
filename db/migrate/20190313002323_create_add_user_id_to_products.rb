class CreateAddUserIdToProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :add_user_id_to_products do |t|

      t.timestamps
    end
  end
end
