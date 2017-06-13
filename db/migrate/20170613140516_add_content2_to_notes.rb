class AddContent2ToNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :notes, :content2, :text
  end
end
