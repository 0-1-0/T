class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.references :q, index: true
      t.string :text
      t.integer :code

      t.timestamps
    end
  end
end
