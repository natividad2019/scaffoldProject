class Post < ApplicationRecord
  # app/models/post.rb


  validates :picture_url, presence: true
  validates :comment, presence: true
  validates :likes, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  

  

  private

  def custom_validation_method
    errors.add(:base, "Custom validation error message") if some_condition
  end
end