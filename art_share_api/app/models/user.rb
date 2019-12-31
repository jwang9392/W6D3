# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  username   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord

  validates :username, presence: true
  
  has_many :artwork_shares,
    foreign_key: :viewer_id

  # has_many :artworks,
  #   through: :artwork_shares


end
