class Reservation < ApplicationRecord
  belongs_to :book
  belongs_to :client
  belongs_to :librarian
  before_create :stockDecremet
  def stockDecremet
    if self.book.stock == 0
      throw(:abort)
    end
    self.book.stock -= 1
    self.book.save
  end
end
