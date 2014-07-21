class CreateQs < ActiveRecord::Migration
  def change
    create_table :qs do |t|
      t.integer :order
      t.references :quiz, index: true
      t.string :title

      t.timestamps
    end
    add_index :qs, :order
  end
end
