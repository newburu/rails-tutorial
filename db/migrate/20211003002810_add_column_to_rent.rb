class AddColumnToRent < ActiveRecord::Migration[6.1]
  def change
    add_column :rents, :status, :integer, after: 'book_id'
    add_column :rents, :start_at, :datetime, after: 'status'
    add_column :rents, :end_at, :datetime, after: 'start_at'
  end
end
