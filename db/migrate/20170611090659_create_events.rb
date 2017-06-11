class CreateEvents < ActiveRecord::Migration[5.1]
  def change
  	drop_table :events
    create_table :events do |t|
      t.string :title

      t.timestamps
    end
  end
end
