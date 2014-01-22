class Books < ActiveRecord::Base
  
  validates :name, presence: true, length: { maximum: 50 }
  validates :isbn, presence: true, length: { maximum: 14 }
  validates :author, presence: true
  validates :publisher, presence: true
  
end
