class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :user

  def self.search(search)
    where("title ILIKE ?", "%#{search}%")
  end
end
