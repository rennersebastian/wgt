class CreateWgs < ActiveRecord::Migration[5.0]
  def change
    create_table :wgs, id: :uuid do |t|
      t.string :name

      t.timestamps
    end
  end
end
