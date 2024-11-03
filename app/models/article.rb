class Article < ApplicationRecord
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  def truncated_body
    ActionController::Base.helpers.truncate(body, length: 100)
  end
end
