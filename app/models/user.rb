class User < ApplicationRecord
  has_and_belongs_to_many :books, join_table: 'Rents'
end
