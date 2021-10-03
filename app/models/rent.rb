class Rent < ApplicationRecord
  belongs_to :user
  belongs_to :book

  enum status: { start_rental: 1 , end_rental: 2 }

end
