class Book < ApplicationRecord
  has_and_belongs_to_many :users, join_table: 'Rents'

  def rental(user)
    Rent.create(book: self, user: user, start_at: DateTime.now, status: :start_rental)
  end

end
