class Post < ApplicationRecord
  validates :name, presence: true
  validates :title, presence: true, length: { maximum: 255 }
  validates :content, presence: true
  validates :slug, uniqueness: true
  validates :email, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ }
  validates :status, inclusion: { in: %w(draft published) }
  validates :views_count, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :custom_validation_method
  validates :publish_date, presence: true, if: :published?

  has_many :comments
  validates_associated :comments

  private

  def custom_validation_method
    errors.add(:base, "Custom validation error message") if some_condition
  end
end