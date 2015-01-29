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

  belongs_to :user

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
