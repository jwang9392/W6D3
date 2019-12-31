# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  title      :string
#  image_url  :string
#  artist_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artwork < ApplicationRecord
  
  validates :title, uniqueness: { scope: :artist_id,
    message: "should happen once per artist" }
  
  belongs_to :artist,
    class_name: 'User',
    foreign_key: :artist_id

  has_many :shared_viewers,

end
