class AddSlugToNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :notes, :slug, :string
  end
end
