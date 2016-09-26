class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks, id: :uuid do |t|
      t.string :name
		
	  t.references :wg, type: :uuid
	  t.references :user, type: :integer
      t.timestamps
    end
  end
end
