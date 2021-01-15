class AddDisplayNameToSubjects < ActiveRecord::Migration[5.2]
  def change
    add_column :subjects, :display_name, :string
  end
end
