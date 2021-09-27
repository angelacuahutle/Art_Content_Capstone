class AddAuthorsReferenceToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :author, foreign_key: {to_table: :users}
  end
end
