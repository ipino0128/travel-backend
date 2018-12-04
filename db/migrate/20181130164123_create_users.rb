class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :avatar, default: "https://qph.fs.quoracdn.net/main-qimg-87001d2ce810c2f48c97032cbc905939"
      t.string :bio, default: "I am a travel blog user!"

      t.timestamps
    end
  end
end
