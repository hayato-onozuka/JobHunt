class AddContent4ToNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :notes, :content4, :text
  end
end
