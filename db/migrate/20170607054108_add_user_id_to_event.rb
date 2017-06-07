class AddUserIdToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :user_id, :integer
    add_column :events, :disp_flg, :boolean
    add_column :events, :start, :datetime
    add_column :events, :end, :datetime
    add_column :events, :allDay, :string
  end
end
