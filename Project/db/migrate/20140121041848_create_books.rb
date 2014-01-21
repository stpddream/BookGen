class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :isbn
      t.string :author
      t.string :publisher
      t.string :edition
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
