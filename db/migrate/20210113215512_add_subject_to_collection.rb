class AddSubjectToCollection < ActiveRecord::Migration[5.2]
  def change
    add_column :collections, :subject_id, :integer
  end
end
