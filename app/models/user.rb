class User < ApplicationRecord
  has_many :meetings
  has_many :operated_meetings, class_name: "Meeting", foreign_key: "operator_id"
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
end
