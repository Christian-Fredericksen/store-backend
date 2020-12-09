class CreateUserCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :user_carts do |t|
      t.references :user, foreign_key: true
      t.references :cart, foreign_key: true

      t.timestamps
    end
  end
end
