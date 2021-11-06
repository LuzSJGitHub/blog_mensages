class Post < ApplicationRecord
  belongs_to :blog

  has_many :message, dependent: :delete_all

  validates :title, :content, presence: true

  validates :title,
      length: {minimum: 7}
      
end
 