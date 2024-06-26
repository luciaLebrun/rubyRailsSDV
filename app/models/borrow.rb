class Borrow < ApplicationRecord
  belongs_to :user
  belongs_to :book
  validate :book_is_available

  def book_is_available
    if book && book.borrows.where(ended_at: nil).exists?
      errors.add(:book, 'is already borrowed')
    end
  end
end
