# == Schema Information
#
# Table name: rooms
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  beds        :integer
#  guests      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image_url   :string
#

class Room < ActiveRecord::Base
    validates :title, presence: true
    validates :description, presence: true, length: { in: 0..400 }
    validates :beds, presence: true
    validates :guests, presence: true
    validates :image_url, presence: true
    validates :description, presence: true
end
