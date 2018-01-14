class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :company, foreign_key: true
      t.text :message

      t.timestamps
    end
  end
end
