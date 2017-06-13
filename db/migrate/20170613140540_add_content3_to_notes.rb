class AddContent3ToNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :notes, :content3, :text
  end
end
