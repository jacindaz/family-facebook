class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true, length: {
    minimum: 5,
    maximum: 200,
    tokenizer: lambda { |str| str.scan(/\w+/) },
    too_short: "must have at least %{count} words.",
    too_long: "must have less than %{count} words."
  }

  validates :user_id, presence: true, numericality: { only_integer: true }
  validates_uniqueness_of :user_id, message: 'is restricted to one per user'

  belongs_to :user
end
