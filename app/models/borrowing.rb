
class Borrowing < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :due_date, presence: true
  validate :book_availability, on: :create

  before_create :set_due_date

  private

  def set_due_date
    self.due_date ||= 2.weeks.from_now
  end

  def book_availability
    errors.add(:book, "is already borrowed") unless book.available
  end
end
