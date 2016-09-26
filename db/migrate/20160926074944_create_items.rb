class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items, id: :uuid do |t|
      t.string :name
	  t.integer :amount

	  t.references :wg, type: :uuid
      t.timestamps
    end
  end
end
