class Friendship < ApplicationRecord
  validates :member_id, :friend_id, presence: true
end
