class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :comment
      t.references :user, foreign_key: true
      t.references :notice, foreign_key: true
      t.timestamps
    end
  end
end
