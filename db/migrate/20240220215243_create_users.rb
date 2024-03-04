class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email, null: false, default: ""
      t.string :username
      t.string :last_name
      t.string :password_digest  # Utilisez cette ligne si vous utilisez BCrypt pour le hachage du mot de passe

      t.timestamps
    end

    add_index :users, :email, unique: true
    add_index :users, :username, unique: true
  end
end
