class AddAuthorToEntries < ActiveRecord::Migration[5.0]
  def change
    add_column :entries, :author, :string
  end
end
