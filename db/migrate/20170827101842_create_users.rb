class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
    	t.string :firstname
    	t.string :lastname
    	t.string :email, null: false
    	t.string :password_digest, null: false
    	t.boolean :admin
      t.timestamps
    end
  end
end
