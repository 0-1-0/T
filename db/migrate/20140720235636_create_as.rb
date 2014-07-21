class CreateAs < ActiveRecord::Migration
  def change
    create_table :as do |t|
      t.references :quiz, index: true
      t.integer :code
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
