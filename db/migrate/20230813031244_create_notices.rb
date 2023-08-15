class CreateNotices < ActiveRecord::Migration[7.0]
  def change
    create_table :notices do |t|
      t.string :title
      t.string :description
      t.string :image
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
