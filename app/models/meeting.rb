class Meeting < ApplicationRecord
  #attr_accessor :room_name

  belongs_to :user
  belongs_to :operator, class_name: "User"

  before_create :generate_room_name

  private
  def generate_room_name
    self.room_name ||= SecureRandom.hex(10)
  end
end
