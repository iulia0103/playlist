class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :user

  def self.search(search)
    where("title LIKE ?", "%#{search}%")
  end
end
