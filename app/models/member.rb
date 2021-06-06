class Member < ApplicationRecord
  has_many :headers
  has_many :friendships
  has_many :friends, through: :friendships

  validates :first_name, :last_name, :url, presence: true
  scope :experts_in, -> (text) { joins(:headers).where("header like ?",text).group("member.id")}

  # TODO handle two direction friendships
end
