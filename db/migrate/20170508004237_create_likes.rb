class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.references :article, foreign_key: true
      t.string     :user_token

      t.timestamps
    end
  end
end
